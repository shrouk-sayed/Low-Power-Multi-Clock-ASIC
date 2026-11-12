
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

############################# Formality Setup File ##########################
                                                   
set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries to the search_path variable
lappend search_path /home/IC/tsmc_fb_cl013g_sc/aci/sc-m/synopsys


#Add the path of RTL files to the search_path variable
lappend search_path /home/IC/Projects/System/rtl

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format verilog

#UART_RX Files
analyze -format $file_format data_sampling.v
analyze -format $file_format deserializer.v
analyze -format $file_format edge_bit_counter.v
analyze -format $file_format parity_check.v
analyze -format $file_format stop_check.v
analyze -format $file_format start_check.v
analyze -format $file_format UART_RX.v
analyze -format $file_format RX_FSM.v

#UART_TX Files
analyze -format $file_format MUX.v
analyze -format $file_format parity_calc.v
analyze -format $file_format serializer.v
analyze -format $file_format UART_TX.v
analyze -format $file_format FSM.v

#UART_TOP Files
analyze -format $file_format UART_TOP.v

#DATA_SYNC Files
analyze -format $file_format DATA_SYNC.v

#SYS_CONTROL Files
analyze -format $file_format SYS_CTRL.v


#REG_FILE Files
analyze -format $file_format reg_file.v

#ALU Files
analyze -format $file_format ALU.v

#FIFO Files
analyze -format $file_format DF_SYNC.v
analyze -format $file_format FIFO_MEM.v
analyze -format $file_format FIFO_RD.v
analyze -format $file_format FIFO_WR.v
analyze -format $file_format ASYNC_FIFO.v

#PULSE_GENERATOR Files
analyze -format $file_format PULSE_GEN.v

#CLK_DIVIDER MUX Files
analyze -format $file_format CLKDIV_MUX.v
#CLK_DIVIDER Files
analyze -format $file_format ClkDiv.v
#CLK_GATING Files
analyze -format $file_format clk_gating.v

#RST_SYNC Files
analyze -format $file_format RST_SYNC.v

#SYS_TOP Files
analyze -format $file_format SYS_TOP.v

elaborate -lib WORK SYS_TOP

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source ./cons.tcl

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile 

#############################################################################
# Write out files
#############################################################################

write_file -format verilog -hierarchy -output netlists/$top_module.ddc
write_file -format verilog -hierarchy -output netlists/$top_module.v
write_sdf  sdf/$top_module.sdf
write_sdc  -nosplit sdc/$top_module.sdc

####################### reporting ##########################################

report_area -hierarchy > reports/area.rpt
report_power -hierarchy > reports/power.rpt
report_timing -delay_type min > reports/hold.rpt
report_timing -delay_type max > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_constraint -all_violators -nosplit > reports/constraints.rpt

################# starting graphical user interface #######################

#gui_start

#exit
