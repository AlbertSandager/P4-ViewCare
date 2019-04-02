# THIS FILE IS AUTOMATICALLY GENERATED
# Project: C:\Users\Albert Sandager\Documents\GitHub\P4-ViewCare\PSoC\SDCard\SDCard.cydsn\SDCard.cyprj
# Date: Tue, 02 Apr 2019 10:19:55 GMT
#set_units -time ns
create_clock -name {CyXTAL_32KHZ} -period 30517.578125 -waveform {0 15258.7890625} [list [get_pins {ClockBlock/clk_32k_xtal}]]
create_clock -name {CyILO} -period 1000000 -waveform {0 500000} [list [get_pins {ClockBlock/ilo}] [get_pins {ClockBlock/clk_100k}] [get_pins {ClockBlock/clk_1k}] [get_pins {ClockBlock/clk_32k}]]
create_clock -name {CyIMO} -period 333.33333333333331 -waveform {0 166.666666666667} [list [get_pins {ClockBlock/imo}]]
create_clock -name {CyPLL_OUT} -period 41.666666666666664 -waveform {0 20.8333333333333} [list [get_pins {ClockBlock/pllout}]]
create_clock -name {CyMASTER_CLK} -period 41.666666666666664 -waveform {0 20.8333333333333} [list [get_pins {ClockBlock/clk_sync}]]
create_generated_clock -name {CyBUS_CLK} -source [get_pins {ClockBlock/clk_sync}] -edges {1 2 3} [list [get_pins {ClockBlock/clk_bus_glb}]]
create_generated_clock -name {emFile_Clock_1} -source [get_pins {ClockBlock/clk_sync}] -edges {1 2 3} [list [get_pins {ClockBlock/dclk_glb_0}]]
create_generated_clock -name {UART_IntClock} -source [get_pins {ClockBlock/clk_sync}] -edges {1 313 627} [list [get_pins {ClockBlock/dclk_glb_1}]]


# Component constraints for C:\Users\Albert Sandager\Documents\GitHub\P4-ViewCare\PSoC\SDCard\SDCard.cydsn\TopDesign\TopDesign.cysch
# Project: C:\Users\Albert Sandager\Documents\GitHub\P4-ViewCare\PSoC\SDCard\SDCard.cydsn\SDCard.cyprj
# Date: Tue, 02 Apr 2019 10:19:48 GMT
