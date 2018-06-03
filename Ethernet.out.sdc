## Generated SDC file "Ethernet.out.sdc"

## Copyright (C) 2018  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details.


## VENDOR  "Intel Corporation"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.0.0 Build 219 04/25/2018 SJ Pro Edition"

## DATE    "Mon Jun  4 03:14:20 2018"

##
## DEVICE  "10AX115S2F45I1SG"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {ref_clk_p} -period 8.000 -waveform { 0.000 4.000 } [get_ports {ref_clk_p}]
create_clock -name {clk50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {clk_50}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk} -source [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|outclk[2]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 4 -master_clock {ref_clk_p} [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|dprio_clk_gen.dprio_div_counter[1]}] 
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} -source [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|refclk[0]}] -duty_cycle 50/1 -multiply_by 10 -master_clock {ref_clk_p} [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] 
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} -invert [get_nets {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~O_PCLK}] 
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[0]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} -invert [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[0]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[1]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} -invert [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[1]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[2]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} -invert [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[2]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[3]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} -invert [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[3]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[4]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} -invert [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[4]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[5]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} -invert [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[5]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[6]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} -invert [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[6]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[7]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} -invert [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[7]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[8]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} -invert [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[8]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[9]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg} -source [get_registers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -duty_cycle 50/1 -multiply_by 1 -divide_by 10 -master_clock {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0} -invert [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[0].soft_cdr.ioserdesdpa.serdes_dpa_inst|rxdata[9]}] -add
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]} -source [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|refclk[0]}] -duty_cycle 50/1 -multiply_by 10 -phase 180/1 -master_clock {ref_clk_p} [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] 
create_generated_clock -name {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]} -source [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|refclk[0]}] -duty_cycle 10/1 -multiply_by 10 -divide_by 10 -phase 324/1 -master_clock {ref_clk_p} [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -setup 0.160  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -hold 0.354  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -setup 0.160  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -hold 0.354  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.266  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.255  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.266  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.255  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -setup 0.160  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -hold 0.354  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -setup 0.160  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -hold 0.354  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.266  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.255  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.266  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.255  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -setup 0.226  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -hold 0.215  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {clk50}] -rise_to [get_clocks {clk50}]  0.100  
set_clock_uncertainty -rise_from [get_clocks {clk50}] -fall_to [get_clocks {clk50}]  0.100  
set_clock_uncertainty -fall_from [get_clocks {clk50}] -rise_to [get_clocks {clk50}]  0.100  
set_clock_uncertainty -fall_from [get_clocks {clk50}] -fall_to [get_clocks {clk50}]  0.100  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -rise_to [get_clocks {ref_clk_p}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -rise_to [get_clocks {ref_clk_p}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -fall_to [get_clocks {ref_clk_p}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -fall_to [get_clocks {ref_clk_p}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -rise_to [get_clocks {ref_clk_p}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -rise_to [get_clocks {ref_clk_p}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -fall_to [get_clocks {ref_clk_p}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -fall_to [get_clocks {ref_clk_p}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -rise_to [get_clocks {ref_clk_p}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -rise_to [get_clocks {ref_clk_p}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -fall_to [get_clocks {ref_clk_p}] -setup 0.196  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -fall_to [get_clocks {ref_clk_p}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -rise_to [get_clocks {ref_clk_p}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -rise_to [get_clocks {ref_clk_p}] -hold 0.185  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -fall_to [get_clocks {ref_clk_p}] -setup 0.196  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -fall_to [get_clocks {ref_clk_p}] -hold 0.185  
set_clock_uncertainty -rise_from [get_clocks {ref_clk_p}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {ref_clk_p}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {ref_clk_p}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {ref_clk_p}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -hold 0.304  
set_clock_uncertainty -rise_from [get_clocks {ref_clk_p}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {ref_clk_p}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -hold 0.504  
set_clock_uncertainty -rise_from [get_clocks {ref_clk_p}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {ref_clk_p}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -hold 0.504  
set_clock_uncertainty -rise_from [get_clocks {ref_clk_p}] -rise_to [get_clocks {ref_clk_p}]  0.100  
set_clock_uncertainty -rise_from [get_clocks {ref_clk_p}] -fall_to [get_clocks {ref_clk_p}]  0.100  
set_clock_uncertainty -fall_from [get_clocks {ref_clk_p}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {ref_clk_p}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {ref_clk_p}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {ref_clk_p}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -hold 0.304  
set_clock_uncertainty -fall_from [get_clocks {ref_clk_p}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {ref_clk_p}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -hold 0.504  
set_clock_uncertainty -fall_from [get_clocks {ref_clk_p}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {ref_clk_p}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -hold 0.504  
set_clock_uncertainty -fall_from [get_clocks {ref_clk_p}] -rise_to [get_clocks {ref_clk_p}]  0.100  
set_clock_uncertainty -fall_from [get_clocks {ref_clk_p}] -fall_to [get_clocks {ref_clk_p}]  0.100  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {ref_clk_p}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {ref_clk_p}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -rise_to [get_clocks {ref_clk_p}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}] -fall_to [get_clocks {ref_clk_p}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {ref_clk_p}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {ref_clk_p}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -rise_to [get_clocks {ref_clk_p}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -fall_to [get_clocks {ref_clk_p}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {clk50}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {clk50}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {clk50}] -rise_to [get_clocks {ref_clk_p}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {clk50}] -fall_to [get_clocks {ref_clk_p}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {clk50}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {clk50}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {clk50}] -rise_to [get_clocks {ref_clk_p}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {clk50}] -fall_to [get_clocks {ref_clk_p}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}]  0.070  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}]  0.070  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}]  0.040  
set_clock_uncertainty -fall_from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|lvds_clk[0]}]  0.040  
set_clock_uncertainty -rise_from [get_clocks {ref_clk_p}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {ref_clk_p}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {ref_clk_p}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {ref_clk_p}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {ref_clk_p}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {ref_clk_p}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {ref_clk_p}] -rise_to [get_clocks {clk50}]  0.200  
set_clock_uncertainty -rise_from [get_clocks {ref_clk_p}] -fall_to [get_clocks {clk50}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {ref_clk_p}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {ref_clk_p}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_ck_name_0}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {ref_clk_p}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {ref_clk_p}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_core_ck_name_0}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {ref_clk_p}] -rise_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {ref_clk_p}] -fall_to [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {ref_clk_p}] -rise_to [get_clocks {clk50}]  0.200  
set_clock_uncertainty -fall_from [get_clocks {ref_clk_p}] -fall_to [get_clocks {clk50}]  0.200  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************

set_false_path  -fall_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0}]  -to  [get_clocks *]
set_false_path  -rise_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_0_neg}]  -to  [get_clocks *]
set_false_path  -fall_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1}]  -to  [get_clocks *]
set_false_path  -rise_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_1_neg}]  -to  [get_clocks *]
set_false_path  -fall_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2}]  -to  [get_clocks *]
set_false_path  -rise_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_2_neg}]  -to  [get_clocks *]
set_false_path  -fall_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3}]  -to  [get_clocks *]
set_false_path  -rise_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_3_neg}]  -to  [get_clocks *]
set_false_path  -fall_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4}]  -to  [get_clocks *]
set_false_path  -rise_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_4_neg}]  -to  [get_clocks *]
set_false_path  -fall_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5}]  -to  [get_clocks *]
set_false_path  -rise_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_5_neg}]  -to  [get_clocks *]
set_false_path  -fall_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6}]  -to  [get_clocks *]
set_false_path  -rise_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_6_neg}]  -to  [get_clocks *]
set_false_path  -fall_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7}]  -to  [get_clocks *]
set_false_path  -rise_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_7_neg}]  -to  [get_clocks *]
set_false_path  -fall_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8}]  -to  [get_clocks *]
set_false_path  -rise_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_8_neg}]  -to  [get_clocks *]
set_false_path  -fall_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9}]  -to  [get_clocks *]
set_false_path  -rise_from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dpa_data_out_0_9_neg}]  -to  [get_clocks *]
set_false_path  -from  [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|internal_pll.pll_inst|altera_lvds_core20_iopll|loaden[0]}]  -to  [get_clocks *]
set_false_path -to [get_pins -nocase -compatibility_mode {*|altera_tse_reset_synchronizer:*|altera_tse_reset_synchronizer_chain*|clrn}]
set_false_path -from [get_clocks {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core_dprio_clk}] -to [get_keepers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|dprio_clk_gen.dprio_div_counter[*]}]
set_false_path -from [get_keepers {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[*].soft_cdr.ioserdesdpa.serdes_dpa_inst~dpa_reg}] -to [get_fanouts [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[*].soft_cdr.ioserdesdpa.serdes_dpa_inst|dpalock}]]
set_false_path -through [get_pins {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|channels[*].soft_cdr.ioserdesdpa.serdes_dpa_inst|dpareset}]  
set_false_path -through [get_pins -compatibility_mode {u0sgmii|eth_tse_0|i_lvdsio_rx_0|core|arch_inst|*pll_areset_sync*sync_reg[*]|clrn}]  
set_false_path -from [get_keepers {u0sgmii|eth_tse_0|i_lvdsio_tx_0|core|arch_inst|channels[*].tx.serdes_dpa_inst~tx_internal_reg}] 
set_false_path -through [get_pins -compatibility_mode {u0sgmii|eth_tse_0|i_lvdsio_tx_0|core|arch_inst|*pll_areset_sync*sync_reg[*]|clrn}]  


#**************************************************************
# Set Multicycle Path
#**************************************************************

set_multicycle_path -setup -end -from [get_keepers {u0sgmii|eth_tse_0|i_lvdsio_tx_0|core|arch_inst|channels[*].tx.tx_reg[*]}] -to [get_keepers {u0sgmii|eth_tse_0|i_lvdsio_tx_0|core|arch_inst|channels[*].tx.serdes_dpa_inst~tx_internal_reg}] 9
set_multicycle_path -hold -end -from [get_keepers {u0sgmii|eth_tse_0|i_lvdsio_tx_0|core|arch_inst|channels[*].tx.tx_reg[*]}] -to [get_keepers {u0sgmii|eth_tse_0|i_lvdsio_tx_0|core|arch_inst|channels[*].tx.serdes_dpa_inst~tx_internal_reg}] 9


#**************************************************************
# Set Maximum Delay
#**************************************************************

set_max_delay -from [get_registers *] -to [get_registers {*altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1}] 100.000
set_max_delay -from [get_registers *] -to [get_registers {*altera_tse_false_path_marker:*|data_out_reg*}] 100.000


#**************************************************************
# Set Minimum Delay
#**************************************************************

set_min_delay -from [get_registers *] -to [get_registers {*altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1}] -100.000
set_min_delay -from [get_registers *] -to [get_registers {*altera_tse_false_path_marker:*|data_out_reg*}] -100.000


#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Net Delay
#**************************************************************

set_net_delay -max 6.000 -from [get_pins -compatibility_mode {*|q}] -to [get_registers {*altera_eth_tse_std_synchronizer:*|altera_std_synchronizer_nocut:*|din_s1}]
set_net_delay -max 6.000 -from [get_pins -compatibility_mode {*|q}] -to [get_registers {*altera_tse_false_path_marker:*|data_out_reg*}]
