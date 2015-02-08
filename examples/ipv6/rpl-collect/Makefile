CONTIKI = ../../..
APPS = powertrace collect-view
CONTIKI_PROJECT = udp-sender udp-sink
PROJECT_SOURCEFILES += collect-common.c

WITH_UIP6=1
UIP_CONF_IPV6=1
CFLAGS+= -DUIP_CONF_IPV6_RPL

CFLAGS+=-ffunction-sections
LDFLAGS+= -Wl,--gc-sections,--undefined=_reset_vector__,--undefined=InterruptVectors,--undefined=_copy_data_init__,--undefined=_clear_bss_init__,--undefined=_end_of_init__

ifdef PERIOD
CFLAGS=-DPERIOD=$(PERIOD)
endif

DEFINES+=RPL_CONF_OF=rpl_of_etx
DEFINES+=RPL_MUP_ROUTING=0
DEFINES+=UIP_STATISTICS=0

all: $(CONTIKI_PROJECT)

include $(CONTIKI)/Makefile.include

