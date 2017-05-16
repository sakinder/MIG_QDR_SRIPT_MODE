#------------------------------------------------------------------|
# Synth Type: flatten_hierarchy full							   |
#|--|----------------------|---------------------------------------|
#|01| company              | general electric transportation       |
#|02| project              | 17fb173 c1                            |
#|03| project index        | 35                                    |
#|06| target devices       | zynq z030                             |
#|07| openge release       | 106                                   |
#|08| firmware engineer    | sakinder ali                          |
#|09| create date          | 09/03/2014                            |
#|10| tool version         | vivado 2015.4                         |
#|-------------------------|---------------------------------------|

set ProjectDir   [ file normalize [ file dirname [ info script ] ] ]
puts "= Current Test Dir:\n  $ProjectDir"
set datetime_arr [clock format [clock seconds] -format {%Y %m %d %H %M %S %s}]
set outputfolder $ProjectDir/outputs

set filename $ProjectDir/sync_rpt/datetime.vhd
set filerep $outputfolder/rpt/reportCriticalPaths.rpt
set logsfile $ProjectDir/lastcheckpoints.txt
set file [open $filename w]
set logs [open $logsfile w+]
#-------------------------------------------------------------------
# Store Time in VHDL File
#-------------------------------------------------------------------
puts $logs "[clock format [clock seconds]] - Start\n"
puts $file "library ieee;"
puts $file "use ieee.std_logic_1164.all;"
puts $file "use ieee.numeric_std.all;"
puts $file ""
puts $file "package datetime is"
puts $file "  -- Date information"
puts $file "  constant YEAR_INT  : integer                       := [lindex $datetime_arr 0];"
puts $file "  constant YEAR_HEX  : std_logic_vector(15 downto 0) := X\"[lindex $datetime_arr 0]\";"
puts $file "  constant MONTH_INT : integer                       := [lindex $datetime_arr 1];"
puts $file "  constant MONTH_HEX : std_logic_vector(7 downto 0)  := X\"[lindex $datetime_arr 1]\";"
puts $file "  constant DAY_INT   : integer                       := [lindex $datetime_arr 2];"
puts $file "  constant DAY_HEX   : std_logic_vector(7 downto 0)  := X\"[lindex $datetime_arr 2]\";"
puts $file "  constant DATE_HEX  : std_logic_vector(31 downto 0) := YEAR_HEX & MONTH_HEX & DAY_HEX;"
puts $file "  -- Time information"
puts $file "  constant HOUR_INT   : integer                       := [lindex $datetime_arr 3];"
puts $file "  constant HOUR_HEX   : std_logic_vector(7 downto 0)  := X\"[lindex $datetime_arr 3]\";"
puts $file "  constant MINUTE_INT : integer                       := [lindex $datetime_arr 4];"
puts $file "  constant MINUTE_HEX : std_logic_vector(7 downto 0)  := X\"[lindex $datetime_arr 4]\";"
puts $file "  constant SECOND_INT : integer                       := [lindex $datetime_arr 5];"
puts $file "  constant SECOND_HEX : std_logic_vector(7 downto 0)  := X\"[lindex $datetime_arr 5]\";"
puts $file "  constant TIME_HEX   : std_logic_vector(31 downto 0) := X\"00\" & HOUR_HEX & MINUTE_HEX & SECOND_HEX;"
puts $file "  -- Miscellaneous information"
puts $file "  constant EPOCH_INT  : integer := [lindex $datetime_arr 6];  -- Seconds since 1970-01-01_00:00:00"
puts $file "  constant EPOCH_HEX  : std_logic_vector(31 downto 0) := std_logic_vector(to_unsigned(EPOCH_INT, 32));"
puts $file "end package;"
close $file
puts $logs "[clock format [clock seconds]] - create vhdl file\n"
#-------------------------------------------------------------------
# report critical paths
#-------------------------------------------------------------------
proc reportCriticalPaths { fileName } {
	set FH [open $fileName w]
	puts $FH "#\n# File created on [clock format [clock seconds]]\n"
	puts $FH "Startpoint,Endpoint,DelayType,Slack,#Levels,#LUTs"
	foreach delayType {max min} {
	foreach path [get_timing_paths -delay_type $delayType -max_paths 50 -nworst 1] {
	set luts [get_cells -filter {REF_NAME =~ LUT*} -of_object $path]
	set startpoint [get_property STARTPOINT_PIN $path]
	set endpoint [get_property ENDPOINT_PIN $path]
	set slack [get_property SLACK $path]
	set levels [get_property LOGIC_LEVELS $path]
	puts $FH "$startpoint,$endpoint,$delayType,$slack,$levels,[llength $luts]"
		}
	}
	close $FH
	puts "CSV file $fileName has been created.\n"
	return 0
};
puts $logs "[clock format [clock seconds]] - start vivado script\n"
set returnCode 0
#-------------------------------------------------------------------
# Set Threads
#-------------------------------------------------------------------
get_param general.maxThreads
set_param general.maxThreads 8
get_param general.maxThreads
#-------------------------------------------------------------------
# Set Directories
#-------------------------------------------------------------------
set cache_dir    	$ProjectDir/.cache 
set xilx_dir    	$ProjectDir/.Xil
set src_dir    		$ProjectDir/srcs/rtl  
set xdc_dir    		$ProjectDir/srcs/xdc/Beta
set ip_dir     		$ProjectDir/srcs/ip
set ip_traffic_gen  $ProjectDir/srcs/ip/traffic_gen
set ip_clocking     $ProjectDir/srcs/ip/clocking
set ip_phy     		$ProjectDir/srcs/ip/phy
set fbcard_ip  		$ProjectDir/srcs/fb_ip/
set zynq_ip    		$ProjectDir/srcs/bd/ps
set zynq_hdl   		$ProjectDir/srcs/bd/ps/hdl   
set output_dir 		$outputfolder/output
set dcp_dir 		$outputfolder/dcp
set rpt_dir    		$outputfolder/rpt
set sdk_dir			$ProjectDir/sdk
set dir_metadata 	$ProjectDir/sdk/.metadata
set dir_remote 		$ProjectDir/sdk/RemoteSystemsTempFiles
set dir_platform 	$ProjectDir/sdk/top_hw_platform_0
set dir_webtalk 	$ProjectDir/sdk/webtalk
#-------------------------------------------------------------------
# Delete Directories
#-------------------------------------------------------------------
file delete -force $cache_dir
file delete -force $xilx_dir
file delete -force $dir_metadata
file delete -force $dir_remote
file delete -force $dir_platform
file delete -force $output_dir
file delete -force $dcp_dir
file delete -force $rpt_dir
file delete -force $dir_webtalk
#-------------------------------------------------------------------
# Make Directories
#-------------------------------------------------------------------
puts $logs "[clock format [clock seconds]] - directory setup\n"
file mkdir $output_dir
file mkdir $rpt_dir
file mkdir $dcp_dir

#-------------------------------------------------------------------
# Read Source Files
#-------------------------------------------------------------------
puts $logs "[clock format [clock seconds]] -deleting files\n"
set device XC7Z045-FFG900-2
create_project -in_memory -part $device
read_vhdl [glob $src_dir/*.vhd ]
read_verilog [glob $ip_clocking/*.v ]
read_verilog [glob $ip_phy/*.v ]
read_verilog [glob $ip_traffic_gen/*.v ]
read_xdc  $xdc_dir/BetaConstraints.xdc
read_xdc  $xdc_dir/BetaPins.xdc
#-------------------------------------------------------------------
# Synth Type
#-------------------------------------------------------------------
synth_design -top top -flatten_hierarchy full
set_param general.maxThreads 8
reportCriticalPaths $filerep
#-------------------------------------------------------------------
# Write checkpoint : post_synth
#-------------------------------------------------------------------
write_checkpoint -force $dcp_dir/post_synth
report_ip_status -file $rpt_dir/post_synth_ipstat.rpt
report_utilization -file $rpt_dir/post_synth_util.rpt
report_timing -sort_by group -max_paths 5 -path_type summary -file $rpt_dir/post_synth_timing.rpt
reportCriticalPaths $rpt_dir/post_synth_critpath_report.rpt
puts $logs "[clock format [clock seconds]] -write debug probes pins\n"
write_debug_probes $output_dir/designProbes.ltx
puts $logs "[clock format [clock seconds]] -open_checkpoint post_synth\n"
open_checkpoint $dcp_dir/post_synth.dcp
opt_design
reportCriticalPaths $rpt_dir/post_opt_critpath_report.rpt
#power_opt_design
place_design
report_clock_utilization -file $rpt_dir/clock_util.rpt
# Optionally run optimization if there are timing violations after placement
if {[get_property SLACK [get_timing_paths -max_paths 1 -nworst 1 -setup]] < 0} {
 puts "Found setup timing violations => running physical optimization"
 phys_opt_design
}
#-------------------------------------------------------------------
# Write checkpoint : post_place
#-------------------------------------------------------------------
write_checkpoint -force $dcp_dir/post_place.dcp
report_utilization -file $rpt_dir/post_place_util.rpt
report_timing_summary -file $rpt_dir/post_place_timing_summary1.rpt
report_timing -sort_by group -max_paths 5 -path_type summary -file $rpt_dir/post_place_timing.rpt
puts $logs "[clock format [clock seconds]] -open_checkpoint post_place\n"
open_checkpoint $dcp_dir/post_place.dcp
route_design
write_checkpoint -force $dcp_dir/post_route
#-------------------------------------------------------------------
# Gen Reports for Current Run
#-------------------------------------------------------------------
report_utilization -file $rpt_dir/post_route_util.rpt
write_vhdl -file $output_dir/wave_gen_impl_netlist.vhd
write_xdc -no_fixed_only -force $output_dir/wave_gen_impl.xdc
puts $logs "[clock format [clock seconds]] -open_checkpoint post_route\n"
report_route_status -file $rpt_dir/post_route_status.rpt
report_timing_summary -file $rpt_dir/post_route_timing_summary2.rpt
report_power -file $rpt_dir/post_route_power.rpt
report_drc -file $rpt_dir/post_imp_drc.rpt
write_bitstream $output_dir/top.bit
#-------------------------------------------------------------------
# Delete Temp Folders
#-------------------------------------------------------------------
file delete -force $cache_dir
file delete -force $xilx_dir
puts $FH "End"
close $FH
#-------------------------------------------------------------------
# If there is a error log into a file
#-------------------------------------------------------------------
if { $returnCode != 0 } {
  error "Problems were encountered while executing the design script, please review the log files."
}
exit
#-------------------------------------------------------------------