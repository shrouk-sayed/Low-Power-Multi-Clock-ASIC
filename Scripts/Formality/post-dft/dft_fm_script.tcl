
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

######################### Formality Setup File ###########################

set synopsys_auto_setup true

set_svf "/home/IC/Projects/System/DFT/$top_module.svf"


set SSLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "/home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

######################### Reference Container ############################

## Read Reference technology libraries

read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

## Read Reference Design Files

read_verilog -container Ref "/home/IC/Projects/System/rtl/mux2X1.v"
read_verilog -container Ref "/home/IC/Projects/System/rtl/ALU.v"
read_verilog -container Ref "/home/IC/Projects/System/rtl/ClkDiv.v"
read_verilog -container Ref "/home/IC/Projects/System/rtl/CLKDIV_MUX.v"
read_verilog -container Ref "/home/IC/Projects/System/rtl/clk_gating.v"
read_verilog -container Ref "/home/IC/Projects/System/rtl/PULSE_GEN.v"
read_verilog -container Ref "/home/IC/Projects/System/rtl/DATA_SYNC.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/reg_file.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/RST_SYNC.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/SYS_CTRL.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/FIFO_RD.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/FIFO_WR.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/FIFO_MEM.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/DF_SYNC.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/ASYNC_FIFO.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/data_sampling.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/deserializer.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/edge_bit_counter.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/parity_check.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/stop_check.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/start_check.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/UART_RX.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/RX_FSM.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/MUX.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/parity_calc.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/serializer.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/UART_TX.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/FSM.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/UART_TOP.v" 
read_verilog -container Ref "/home/IC/Projects/System/rtl/SYS_TOP.v" 

## set the top Reference Design 

set_reference_design SYS_TOP
set_top SYS_TOP

######################## Implementation Container #########################

## Read Implementation technology libraries

read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

## Read Implementation Design Files

read_verilog -container Imp -netlist "/home/IC/Projects/System/DFT/netlists/SYS_TOP.v"

## set the top Implementation Design

set_implementation_design SYS_TOP
set_top SYS_TOP

############################### Don't verify #################################

# do not verify scan in & scan out ports as a compare point as it is existed only after synthesis and not existed in the RTL

#scan in
set_dont_verify_points -type port Ref:/WORK/*/SI
set_dont_verify_points -type port Imp:/WORK/*/SI

#scan_out
set_dont_verify_points -type port Ref:/WORK/*/SO
set_dont_verify_points -type port Imp:/WORK/*/SO

############################### constants #####################################

# all atpg enable(test_mode, scan_enable) are zero during formal compare

#test_mode
set_constant Ref:/WORK/*/test_mode 0
set_constant Imp:/WORK/*/test_mode 0

#scan_enable
set_constant Ref:/WORK/*/SE 0
set_constant Imp:/WORK/*/SE 0


########################### matching Compare points ##########################

match

################################# verify #####################################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

report_passing_points > "reports/passing_points.rpt"
report_failing_points > "reports/failing_points.rpt"
report_aborted_points > "reports/aborted_points.rpt"
report_unverified_points > "reports/unverified_points.rpt"


start_gui
