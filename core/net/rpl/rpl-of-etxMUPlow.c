/**
 * \addtogroup uip6
 * @{
 */
/*
 * Copyright (c) 2010, Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the Institute nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * This file is part of the Contiki operating system.
 *
 */
/**
 * \file
 *         The minrank-hysteresis objective function (OCP 1).
 *
 *         This implementation uses the estimated number of 
 *         transmissions (ETX) as the additive routing metric.
 *
 * \author Joakim Eriksson <joakime@sics.se>, Nicolas Tsiftes <nvt@sics.se>
 */

#include "net/rpl/rpl-private.h"
#include "net/neighbor-info.h"
#include "dev/sht11-sensor.h"
#include "dev/leds.h"  //added by me

#define DEBUG DEBUG_NONE
#include "net/uip-debug.h"

static void init(rpl_dag_t *);
static void reset(rpl_dag_t *);
static void parent_state_callback(rpl_parent_t *, int, int);
static rpl_parent_t *best_parent(rpl_parent_t *, rpl_parent_t *);
static rpl_dag_t *best_dag(rpl_dag_t *, rpl_dag_t *);
static rpl_rank_t calculate_rank(rpl_parent_t *, rpl_rank_t);
static void update_metric_container(rpl_instance_t *);

rpl_of_t rpl_of_etxMUPlow = {
  init,
  reset,
  parent_state_callback,
  best_parent,
  best_dag,
  calculate_rank,
  update_metric_container,
  5
};

/* Reject parents that have a higher link metric than the following. */
#define MAX_LINK_METRIC			25

/* Reject parents that have a higher path cost than the following. */
#define MAX_PATH_COST			100

/*
 * The rank must differ more than 1/PARENT_SWITCH_THRESHOLD_DIV in order
 * to switch preferred parent.
 */
#define PARENT_SWITCH_THRESHOLD_DIV	2



/***************************This is definition for MUP *****************************/
#define SAFE                     3
#define LOW_SAFE                 2
#define UNSAFE                   1
#define ALMOST_FAIL              4

static  uint8_t health_status ;                     //store health status
static  uint8_t NEIGH_ALMOST_FAIL;


typedef uint16_t rpl_path_metric_t;

static rpl_path_metric_t
calculate_path_metric(rpl_parent_t *p)
{
  if(p == NULL || (p->mc.obj.etx == 0 && p->rank > ROOT_RANK(p->dag->instance))||p->mc.prec==ALMOST_FAIL) {
    return MAX_PATH_COST * RPL_DAG_MC_ETX_DIVISOR;
  } else {
	long etx = p->link_metric;
	etx = (etx * RPL_DAG_MC_ETX_DIVISOR) / NEIGHBOR_INFO_ETX_DIVISOR;
	return p->mc.obj.etx + (uint16_t) etx;
  }
}

static rpl_path_metric_t
calculate_path_metric_MUP(rpl_parent_t *p)
{
  if(p == NULL || (p->mc.obj.etx == 0 && p->rank > ROOT_RANK(p->dag->instance))||p->mc.prec==ALMOST_FAIL) {
    return MAX_PATH_COST * RPL_DAG_MC_ETX_DIVISOR;
  }

  if (p->link_metric >= 10*INITIAL_LINK_METRIC){
   long etx = p->link_metric;
   etx = (etx * RPL_DAG_MC_ETX_DIVISOR) / NEIGHBOR_INFO_ETX_DIVISOR;
   return p->mc.obj.etx + (uint16_t) etx;
  }else{
   return p->mc.obj.etx;
  }
}


uint16_t get_temperature()
{   SENSORS_ACTIVATE(sht11_sensor); // activates the sensor
    uint16_t temperature;
	uint16_t temp_frm_sensor;
	temp_frm_sensor = sht11_sensor.value(SHT11_SENSOR_TEMP);
    temperature = (temp_frm_sensor-42196)/100;
    SENSORS_DEACTIVATE(sht11_sensor); // disable sensor
    return temperature;

}


void
health_detection (rpl_dag_t *dag) {
	uint16_t temp_reading;
	uint16_t old_health_status;

	if(dag->rank == ROOT_RANK(dag->instance)) {
		health_status = 0;
	}else{

	old_health_status = health_status;

	temp_reading = get_temperature();

	if(temp_reading >=100){
	  health_status = ALMOST_FAIL;
	}
	else if(temp_reading >30 && temp_reading <100){
	  health_status = UNSAFE;
	}
    else if(NEIGH_ALMOST_FAIL==1){
      health_status = LOW_SAFE;
    }
    else{
      health_status = SAFE; //node in unsafe mode, sen dio
    }

	switch(health_status){
	  case SAFE:
	  case UNSAFE:
	   leds_off(LEDS_RED);
	   leds_off(LEDS_GREEN);
	   leds_on(LEDS_YELLOW);
	   break;
	  case ALMOST_FAIL:
	   leds_on(LEDS_RED);
	   leds_off(LEDS_GREEN);
	   leds_off(LEDS_YELLOW);
	   break;
	  case LOW_SAFE:
	   leds_off(LEDS_RED);
	   leds_on(LEDS_GREEN);
	   leds_off(LEDS_YELLOW);
	   break;
	}

    if(health_status != old_health_status){

    rpl_reset_dio_timer(dag->instance);
 //   PRINTF("RPL_etxMUPstatus: node status has changed, send dio to alert neighbours\n");
    }

 //   PRINTF("RPL: current node status is %d with temperature value %d\n", health_status, temp_reading);
  }
}

static void
init(rpl_dag_t *dag)
{   NEIGH_ALMOST_FAIL=0;
	health_status = SAFE;
//	PRINTF("RPL_etxMUPstatus: start of_etxMUPstatus\n");
}

static void
reset(rpl_dag_t *dag)
{ //  PRINTF("RPL_etxMUPstatus: health status has changed, confirm again\n");
	health_detection (dag);
}

static void
parent_state_callback(rpl_parent_t *parent, int known, int etx)
{
}

static rpl_rank_t
calculate_rank(rpl_parent_t *p, rpl_rank_t base_rank)
{
  rpl_rank_t new_rank;
  rpl_rank_t rank_increase;

  if(p == NULL) {
    if(base_rank == 0) {
      return INFINITE_RANK;
    }
    rank_increase = NEIGHBOR_INFO_FIX2ETX(INITIAL_LINK_METRIC) * RPL_MIN_HOPRANKINC;
  } else {
    /* multiply first, then scale down to avoid truncation effects */
    rank_increase = NEIGHBOR_INFO_FIX2ETX(p->link_metric * p->dag->instance->min_hoprankinc);
    if(base_rank == 0) {
      base_rank = p->rank;
    }
  }

  if(INFINITE_RANK - base_rank < rank_increase) {
    /* Reached the maximum rank. */
    new_rank = INFINITE_RANK;
  } else {
   /* Calculate the rank based on the new rank information from DIO or
      stored otherwise. */
    new_rank = base_rank + rank_increase;
  }

  return new_rank;
}

static rpl_dag_t *
best_dag(rpl_dag_t *d1, rpl_dag_t *d2)
{
  if(d1->grounded != d2->grounded) {
    return d1->grounded ? d1 : d2;
  }

  if(d1->preference != d2->preference) {
    return d1->preference > d2->preference ? d1 : d2;
  }

  return d1->rank < d2->rank ? d1 : d2;
}

static rpl_parent_t *
best_parent(rpl_parent_t *p1, rpl_parent_t *p2)
{
  rpl_dag_t *dag;
  rpl_path_metric_t min_diff;
  rpl_path_metric_t p1_metric;
  rpl_path_metric_t p2_metric;

  /**** definition for the node health status*****/
  uint16_t p1_health;
  uint16_t p2_health;

  dag = p1->dag; /* Both parents must be in the same DAG. */

  min_diff = RPL_DAG_MC_ETX_DIVISOR /
             PARENT_SWITCH_THRESHOLD_DIV;



  p1_health = p1->mc.prec;
  p2_health = p2->mc.prec;



  /* If a neighbour is detected in UNSAFE status change to LOWSAFE*/
  if(p1_health == ALMOST_FAIL || p2_health == ALMOST_FAIL ){
  NEIGH_ALMOST_FAIL=1;
  health_detection (dag);
  }

 // if((p1->link_metric <= 10*INITIAL_LINK_METRIC) && (p2->link_metric <= 10*INITIAL_LINK_METRIC)&&(p1_health!=SAFE || p2_health!=SAFE)){
  if(p1_health==SAFE && p2_health==SAFE){
   PRINTF("In RPL path metric\n ");
   p1_metric = calculate_path_metric(p1);
   p2_metric = calculate_path_metric(p2);
  }else{
   PRINTF("In RPL path metric\n ");
   p1_metric = calculate_path_metric_MUP(p1);
   p2_metric = calculate_path_metric_MUP(p2);
  }

  PRINTF("The p1_parent is: ");
  PRINT6ADDR(&p1->addr);
  PRINTF(".... The p2_parent is: ");
  PRINT6ADDR(&p2->addr);
  PRINTF("\n");
  PRINTF("p1_metric:%u ,p2_metric:%u , p1_health:%d, p2_health:%d\n", p1_metric, p2_metric, p1_health, p2_health);

  /* Maintain stability of the preferred parent in case of similar ranks.
   * If health status is different select based on health status according to the priority
   * If health status is the same, just maintains with current parent */


    if(p1_metric < p2_metric + min_diff &&
       p1_metric > p2_metric - min_diff) {

    if (p1_health != p2_health) {
  	  return p1_health < p2_health ? p1 : p2;
  	 }

         if(p1 == dag->preferred_parent || p2 == dag->preferred_parent) {
             PRINTF("RPL: MRHOF hysteresis: %u <= %u <= %u\n",
             p2_metric - min_diff,
             p1_metric,
             p2_metric + min_diff);
      return dag->preferred_parent;
    }
  }

  return p1_metric < p2_metric ? p1 : p2;
}

static void
update_metric_container(rpl_instance_t *instance)
{
  rpl_path_metric_t path_metric;
  rpl_dag_t *dag;
#if RPL_DAG_MC == RPL_DAG_MC_ENERGY
  uint8_t type;
#endif

  instance->mc.flags = RPL_DAG_MC_FLAG_P;
  instance->mc.aggr = RPL_DAG_MC_AGGR_ADDITIVE;


  dag = instance->current_dag;

  if (!dag->joined) {
    /* We should probably do something here */
    return;
  }

  if(dag->rank == ROOT_RANK(instance)) {
	instance->mc.prec = 0;
    path_metric = 0;
  } else {
	instance->mc.prec = health_status;
    path_metric = calculate_path_metric(dag->preferred_parent);
  }

#if RPL_DAG_MC == RPL_DAG_MC_ETX

  instance->mc.type = RPL_DAG_MC_ETX;
  instance->mc.length = sizeof(instance->mc.obj.etx);
  instance->mc.obj.etx = path_metric;

  PRINTF("RPL: My path ETX to the root is %u.%u\n",
	instance->mc.obj.etx / RPL_DAG_MC_ETX_DIVISOR,
	(instance->mc.obj.etx % RPL_DAG_MC_ETX_DIVISOR * 100) / RPL_DAG_MC_ETX_DIVISOR);

#elif RPL_DAG_MC == RPL_DAG_MC_ENERGY

  instance->mc.type = RPL_DAG_MC_ENERGY;
  instance->mc.length = sizeof(instance->mc.obj.energy);

  if(dag->rank == ROOT_RANK(instance)) {
    type = RPL_DAG_MC_ENERGY_TYPE_MAINS;
  } else {
    type = RPL_DAG_MC_ENERGY_TYPE_BATTERY;
  }

  instance->mc.obj.energy.flags = type << RPL_DAG_MC_ENERGY_TYPE;
  instance->mc.obj.energy.energy_est = path_metric;

#else

#error "Unsupported RPL_DAG_MC configured. See rpl.h."

#endif /* RPL_DAG_MC */
}
