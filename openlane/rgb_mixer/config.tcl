# User config
set ::env(DESIGN_NAME) rgb_mixer

set ::env(PDK) "sky130A"
set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_hd"

set ::env(DESIGN_IS_CORE) 0

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

set ::env(PL_TARGET_DENSITY) 0.4

set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 200 200"

set ::env(RT_MAX_LAYER) {met4}

# Fill this
set ::env(CLOCK_PORT) "wb_clk_i"
set ::env(CLOCK_NET) "counter.clk"
set ::env(CLOCK_PERIOD) "10"

set ::env(VDD_NETS) [list {vccd1}]
set ::env(GND_NETS) [list {vssd1}]

set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}

