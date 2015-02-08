/*
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

#include "contiki.h"
#include "net/uip.h"
#include "net/uip-ds6.h"
#include "net/uip-udp-packet.h"
#include "net/neighbor-info.h"
#include "lib/random.h" // added by me
#include "sys/ctimer.h"  //added by me
#include "dev/sht11-sensor.h"  //added by me
#include "dev/leds.h"  //added by me
#include "net/netstack.h"   //added by me

#include "net/rpl/rpl.h"
#include "dev/serial-line.h"
#if CONTIKI_TARGET_Z1
#include "dev/uart0.h"
#else
#include "dev/uart1.h"
#endif
#include "collect-common.h"
#include "collect-view.h"

#include <stdio.h>
#include <string.h>

#define UDP_CLIENT_PORT 8775
#define UDP_SERVER_PORT 5688

#define DEBUG DEBUG_PRINT
#include "net/uip-debug.h"


uint16_t sensor_reading;                                 //added by me
rpl_dag_t *dag;                                      //added by me
rpl_of_t *of;


/***************************This is definition for MUP *****************************/
#define SAFE                     3
#define UNSAFE                   1
#define ALMOST_FAIL              4
//#define NO_HEALTH                4

static  uint8_t health_status ;                     //store health status
static  uint8_t old_health_status;


static unsigned long collect_last_rx, collect_last_tx, collect_last_lpm, collect_last_cpu, BATTERY_ENERGY, ENERGY_CONSUMPTION;  //added by me for variable definition of energest


static struct uip_udp_conn *client_conn;
static uip_ipaddr_t server_ipaddr;

/*---------------------------------------------------------------------------*/
PROCESS(udp_client_process, "UDP client process");
AUTOSTART_PROCESSES(&udp_client_process, &collect_common_process);
/*---------------------------------------------------------------------------*/
void
collect_common_set_sink(void)
{
  /* A udp client can never become sink */
}
/*---------------------------------------------------------------------------*/
extern uip_ds6_route_t uip_ds6_routing_table[UIP_DS6_ROUTE_NB];

void
collect_common_net_print(void)
{
  rpl_dag_t *dag;
  int i;
  /* Let's suppose we have only one instance */
  dag = rpl_get_any_dag();
  if(dag->preferred_parent != NULL) {
//    PRINTF("Preferred parent: ");
 //   PRINT6ADDR(&dag->preferred_parent->addr);
 //  PRINTF("\n");
  }
//  PRINTF("Route entries:\n");
  for(i = 0; i < UIP_DS6_ROUTE_NB; i++) {
    if(uip_ds6_routing_table[i].isused) {
//      PRINT6ADDR(&uip_ds6_routing_table[i].ipaddr);
 //     PRINTF("\n");
    }
  }
 // PRINTF("---\n");
}
/*---------------------------------------------------------------------------*/
static void
tcpip_handler(void)
{
  if(uip_newdata()) {
    /* Ignore incoming data */
  }
}
/*---------------------------------------------------------------------------*/
void
collect_common_send(void)
{
  static uint8_t seqno;
  struct {
    uint8_t seqno;
    uint8_t for_alignment;
    struct collect_view_data_msg msg;
  } msg;
  /* struct collect_neighbor *n; */
  uint16_t parent_etx;
  uint16_t rtmetric;
  uint16_t num_neighbors;
  uint16_t beacon_interval;
  rpl_parent_t *preferred_parent;
  rimeaddr_t parent;
  rpl_dag_t *dag;

  if(client_conn == NULL) {
    /* Not setup yet */
    return;
  }
  memset(&msg, 0, sizeof(msg));
  seqno++;
  if(seqno == 0) {
    /* Wrap to 128 to identify restarts */
    seqno = 128;
  }
  msg.seqno = seqno;

  rimeaddr_copy(&parent, &rimeaddr_null);
  parent_etx = 0;

  /* Let's suppose we have only one instance */
  dag = rpl_get_any_dag();
  if(dag != NULL) {
    preferred_parent = dag->preferred_parent;
    if(preferred_parent != NULL) {
      uip_ds6_nbr_t *nbr;
      nbr = uip_ds6_nbr_lookup(&preferred_parent->addr);
      if(nbr != NULL) {
        /* Use parts of the IPv6 address as the parent address, in reversed byte order. */
        parent.u8[RIMEADDR_SIZE - 1] = nbr->ipaddr.u8[sizeof(uip_ipaddr_t) - 2];
        parent.u8[RIMEADDR_SIZE - 2] = nbr->ipaddr.u8[sizeof(uip_ipaddr_t) - 1];
        parent_etx = neighbor_info_get_metric((rimeaddr_t *) &nbr->lladdr) / 2;
      }
    }
    rtmetric = dag->rank;
    beacon_interval = (uint16_t) ((2L << dag->instance->dio_intcurrent) / 1000);
    num_neighbors = RPL_PARENT_COUNT(dag);
  } else {
    rtmetric = 0;
    beacon_interval = 0;
    num_neighbors = 0;
  }

  PRINTF("SEND: %d to sink \n", seqno);

  /* num_neighbors = collect_neighbor_list_num(&tc.neighbor_list); */
  collect_view_construct_message(&msg.msg, &parent,
                                 parent_etx, rtmetric,
                                 num_neighbors, beacon_interval);

  uip_udp_packet_sendto(client_conn, &msg, sizeof(msg),
                        &server_ipaddr, UIP_HTONS(UDP_SERVER_PORT));
}
/*---------------------------------------------------------------------------*/
void
collect_common_net_init(void)
{
#if CONTIKI_TARGET_Z1
  uart0_set_input(serial_line_input_byte);
#else
  uart1_set_input(serial_line_input_byte);
#endif
  serial_line_init();
}
/*---------------------------------------------------------------------------*/
static void
print_local_addresses(void)
{
  int i;
  uint8_t state;

  PRINTF("Client IPv6 addresses: ");
  for(i = 0; i < UIP_DS6_ADDR_NB; i++) {
    state = uip_ds6_if.addr_list[i].state;
    if(uip_ds6_if.addr_list[i].isused &&
       (state == ADDR_TENTATIVE || state == ADDR_PREFERRED)) {
      PRINT6ADDR(&uip_ds6_if.addr_list[i].ipaddr);
      PRINTF("\n");
      /* hack to make address "final" */
      if (state == ADDR_TENTATIVE) {
        uip_ds6_if.addr_list[i].state = ADDR_PREFERRED;
      }
    }
  }
}
/*---------------------------------------------------------------------------*/
static void
set_global_address(void)
{
  uip_ipaddr_t ipaddr;

  uip_ip6addr(&ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 0);
  uip_ds6_set_addr_iid(&ipaddr, &uip_lladdr);
  uip_ds6_addr_add(&ipaddr, 0, ADDR_AUTOCONF);

  /* set server address */
  uip_ip6addr(&server_ipaddr, 0xaaaa, 0, 0, 0, 0, 0, 0, 1);

}
/*---------------------------------------------------------------------------*/
uint16_t collect_temperature_value(void)
{   SENSORS_ACTIVATE(sht11_sensor); // activates the sensor
    uint16_t temperature;
	uint16_t temp_frm_sensor;
	temp_frm_sensor = sht11_sensor.value(SHT11_SENSOR_TEMP);
    temperature = (temp_frm_sensor-42196)/100;
    SENSORS_DEACTIVATE(sht11_sensor); // disable sensor
    return temperature;
}
/*---------------------------------------------------------------------------*/
uint8_t
udp_health_detection (uint16_t temp_value) {
	old_health_status = health_status;  //store old health status
    if(temp_value <=30){
	  health_status = SAFE;   // node in safe mode.. old and current health status..
	  /*Sensor in SAFE Condition: Turn green LED*/
 //     leds_off(LEDS_RED);
 //     leds_on(LEDS_GREEN);
 //     leds_off(LEDS_YELLOW);
    }
    else if (temp_value >=100){
      health_status = ALMOST_FAIL;  //node almost fail, send dio
      /*Sensor in ALMOST FAIL Condition: Turn red LED*/
 //     leds_on(LEDS_RED);
 //     leds_off(LEDS_GREEN);
 //     leds_off(LEDS_YELLOW);

    }
    else{
      health_status = UNSAFE; //node in unsafe mode, sen dio
      /*Sensor in UNSAFE Condition: Turn yellow LED*/
 //     leds_off(LEDS_RED);
 //     leds_off(LEDS_GREEN);
 //     leds_on(LEDS_YELLOW);
    }


    if(health_status != old_health_status){
     //since we have change on health status update old health status
    PRINTF("health status different..............................\n");
    return 1;
    }else{
    return 0;
	}

}


PROCESS_THREAD(udp_client_process, ev, data)
{
  static struct etimer battery;
  static struct etimer nrg;					 // added to check temperature

  PROCESS_BEGIN();

  PROCESS_PAUSE();

  set_global_address();

  PRINTF("UDP client process started\n");

  print_local_addresses();

  /* new connection with remote host */
  client_conn = udp_new(NULL, UIP_HTONS(UDP_SERVER_PORT), NULL);
  udp_bind(client_conn, UIP_HTONS(UDP_CLIENT_PORT));

  PRINTF("Created a connection with the server ");
  PRINT6ADDR(&client_conn->ripaddr);
  PRINTF(" local/remote port %u/%u\n",
        UIP_HTONS(client_conn->lport), UIP_HTONS(client_conn->rport));

  etimer_set(&battery,5*CLOCK_SECOND);
  etimer_set(&nrg,CLOCK_SECOND);

  /*initial value definition*/
  collect_last_rx = 0;
  collect_last_tx = 0;
  collect_last_lpm = 0;
  collect_last_cpu = 0;

 // BATTERY_ENERGY =8820000;
  BATTERY_ENERGY =5000;  /*the main energy setting*/
 // BATTERY_ENERGY =2500; /*use in finding relationship between the network lifetime and PDR*/


  while(1) {
    PROCESS_YIELD();

    /*check sensor reading*/
    sensor_reading=collect_temperature_value();


    if(ev == tcpip_event) {
      tcpip_handler();
    }

    if(etimer_expired(&nrg)) {
//          PRINTF("TEMPERATURE_VALUE IS: %d \n", sensor_reading);

    #ifdef RPL_MUP_ROUTING
//
    	if(udp_health_detection(sensor_reading)){
         dag = rpl_get_any_dag();  //get current dag value
//         PRINTF("Detect health status changes \n");
         if(dag->instance->of->ocp==5){
//         PRINTF("Reset routing \n");
         dag->instance->of->reset(dag);
    	 }

      }
    #endif

     etimer_reset(&nrg);
    }



    if(etimer_expired(&battery)) {

    	unsigned long ENERGY_RX, ENERGY_TX,ENERGY_LPM, ENERGY_CPU;  //added by me for variable definition of energest
       	unsigned long cpu, lpm, transmit, listen;

        energest_flush();

        cpu = energest_type_time(ENERGEST_TYPE_CPU) - collect_last_cpu;
        lpm = energest_type_time(ENERGEST_TYPE_LPM) - collect_last_lpm;
        transmit = energest_type_time(ENERGEST_TYPE_TRANSMIT) - collect_last_tx;
        listen = energest_type_time(ENERGEST_TYPE_LISTEN) - collect_last_rx;

        collect_last_rx  = energest_type_time(ENERGEST_TYPE_LISTEN);
        collect_last_tx  = energest_type_time(ENERGEST_TYPE_TRANSMIT);
        collect_last_lpm = energest_type_time(ENERGEST_TYPE_LPM);
        collect_last_cpu = energest_type_time(ENERGEST_TYPE_CPU);

  //      PRINTF("ENERGY total rx %lu tx %lu lpm %lu cpu %lu\n",collect_last_rx,
   //     			  collect_last_tx,collect_last_lpm,collect_last_cpu);

        ENERGY_RX = (listen * 20) ;
        ENERGY_TX = (transmit * 177/10) ;
        ENERGY_LPM = (lpm * 545/10000);
        ENERGY_CPU = (cpu * 1800/1000);

       ENERGY_CONSUMPTION +=((ENERGY_RX + ENERGY_TX + ENERGY_LPM + ENERGY_CPU)/4096/8);
      // PRINTF("ENERGY rx %lu tx %lu lpm %lu cpu %lu \n",listen,transmit,lpm, cpu );/*for energy consumption measurement*/
       PRINTF("BATTERY ENERGY: %lu ENERGY_CONSUMPTION %lu \n",BATTERY_ENERGY,ENERGY_CONSUMPTION);
     //  PRINTF("ICMP_statistic: sent %d recv %d \n",uip_stat.icmp.sent,uip_stat.icmp.recv);
         etimer_reset(&battery);
        }

    /*Function to turn the radio off because nergy depletion*/
    if(BATTERY_ENERGY <= ENERGY_CONSUMPTION){
  	  NETSTACK_RDC.off(0);
  	  PRINTF("Battery has depleted !!!!!!!!!!!!!!!!!!!!!!!! \n");
  	  collect_common_set_send_active(0);
        leds_on(LEDS_RED);
        leds_on(LEDS_GREEN);
        leds_on(LEDS_YELLOW);
    }


    /*Function to simulate node burnt in fire when temperature exceed the maximum threshold*/
    if(sensor_reading >= 130){
  	  NETSTACK_RDC.off(0);
  	  PRINTF("Node burnt in fire !!!!!!!!!!!!!!!!!!!!!!!! \n");
  	  collect_common_set_send_active(0);
        leds_on(LEDS_RED);
        leds_off(LEDS_GREEN);
        leds_on(LEDS_YELLOW);
    }


  }

  PROCESS_END();
}
/*---------------------------------------------------------------------------*/
