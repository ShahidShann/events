all:
		clear
		vlib work
		vlog -sv merge_events.sv
		vsim work.merge_events1 -l  merge_events.log -c -do "run -all;quit;"

compile:
		vlib work
		vlog -sv merge_events.sv

simulate:
		vsim merge_events1  merge_events.log -c -do "run -all;quit;"

clear:
		clear

