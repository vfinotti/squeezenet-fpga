action = "simulation"
sim_tool = "modelsim"
sim_top = "generic_cm0_freertos_top"
sim_path = "/home/vfinotti/intelFPGA_lite/18.1/modelsim_ase/linux"
target = "generic"

sim_post_cmd = "vsim -do ../vsim.do -i generic_cm0_freertos_top"

modules = {
  "local" : [ "../../../top/generic_freertos/verilog" ],
}
