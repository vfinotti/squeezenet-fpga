vcd file generic_cm0_freertos_top.vcd;
# vcd add -r /*;
# add wave *

add wave -position insertpoint \
    sim:/generic_cm0_freertos_top/clk_200mhz \
    sim:/generic_cm0_freertos_top/push_button0_i \
    sim:/generic_cm0_freertos_top/led0 \
    sim:/generic_cm0_freertos_top/led1 \
    sim:/generic_cm0_freertos_top/led2 \
    sim:/generic_cm0_freertos_top/led3 \
    sim:/generic_cm0_freertos_top/led4 \
    sim:/generic_cm0_freertos_top/led5 \
    sim:/generic_cm0_freertos_top/led6 \
    sim:/generic_cm0_freertos_top/led7 \
    sim:/generic_cm0_freertos_top/rst_n \
    sim:/generic_cm0_freertos_top/rst \
    sim:/generic_cm0_freertos_top/mst_priority \
    sim:/generic_cm0_freertos_top/mst_hsel \
    sim:/generic_cm0_freertos_top/mst_haddr \
    sim:/generic_cm0_freertos_top/mst_hwdata \
    sim:/generic_cm0_freertos_top/mst_hrdata \
    sim:/generic_cm0_freertos_top/mst_hwrite \
    sim:/generic_cm0_freertos_top/mst_hsize \
    sim:/generic_cm0_freertos_top/mst_hburst \
    sim:/generic_cm0_freertos_top/mst_hprot \
    sim:/generic_cm0_freertos_top/mst_htrans \
    sim:/generic_cm0_freertos_top/mst_hmastlock \
    sim:/generic_cm0_freertos_top/mst_hreadyout \
    sim:/generic_cm0_freertos_top/mst_hready \
    sim:/generic_cm0_freertos_top/mst_hresp \
    sim:/generic_cm0_freertos_top/slv_addr_mask \
    sim:/generic_cm0_freertos_top/slv_addr_base \
    sim:/generic_cm0_freertos_top/slv_hsel \
    sim:/generic_cm0_freertos_top/slv_haddr \
    sim:/generic_cm0_freertos_top/slv_hwdata \
    sim:/generic_cm0_freertos_top/slv_hrdata \
    sim:/generic_cm0_freertos_top/slv_hwrite \
    sim:/generic_cm0_freertos_top/slv_hsize \
    sim:/generic_cm0_freertos_top/slv_hburst \
    sim:/generic_cm0_freertos_top/slv_hprot \
    sim:/generic_cm0_freertos_top/slv_htrans \
    sim:/generic_cm0_freertos_top/slv_hmastlock \
    sim:/generic_cm0_freertos_top/slv_hreadyout \
    sim:/generic_cm0_freertos_top/slv_hready \
    sim:/generic_cm0_freertos_top/slv_hresp \
    sim:/generic_cm0_freertos_top/irq_vector \
    sim:/generic_cm0_freertos_top/rom/ram_inst/genblk1/ram_inst/RAM

force -freeze sim:/generic_cm0_freertos_top/clk_200mhz 1 0, 0 {2500 ps} -r 5ns
force -deposit sim:/generic_cm0_freertos_top/push_button0_i 1 0ns, 0 {1000ns}

run 5000us;
view wave;
