
# Design
set ::env(DESIGN_NAME) "picorv32a"

set ::env(VERILOG_FILES) "./designs/picorv32a/src/picorv32a.v"
set ::env(SDC_FILE) "./designs/picorv32a/src/picorv32a.sdc"

set ::env(CLOCK_PERIOD) "12.000"
set ::env(CLOCK_PORT) "clk"


set::env(CLOCK_NET) $::env(CLOCK_PORT)

set::env(LIB_SYNTH) "$::env(OPENLANE_ROOT)/designs/picorv32a/src/sky130_fd_sc_hd_typical.lib"
set::env(LIB_MIN) "$::env(OPENLANE_ROOT)/designs/picorv32a/src/sky130_fd_sc_hd_fast.lib"
set ::env(LIB MAX) "$::env (OPENLANE_ROOT)/designs/picorv32a/src/sky130_fd_sc_hd_slow.lib"
set ::env(LIB TYPICAL) $::env(OPENLANE_ROOT)/designs/picorv32a/src/sky130_fd_sc_hd_typical.lib"

set ::env(EXTRA_LEFS) [glob $:: env(OPENLANE_ROOT)/designs/$::env(DESIGN_NAME)/src/*.lef]
set filename $:: env(OPENLANE_ROOT)/designs/$:: env(DESIGN_NAME)/$:: env(PDK) $::env(PDK_VARIANT)_config.tcl
if { [file exists $filename] == 1} {
        source $filename
}
