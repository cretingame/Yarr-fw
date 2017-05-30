# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7k160tfbg676-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/asautaux/yarr_fw/syn/xpressk7/ddr3_revA/yarr.cache/wt [current_project]
set_property parent.project_path /home/asautaux/yarr_fw/syn/xpressk7/ddr3_revA/yarr.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
add_files -quiet /home/asautaux/yarr_fw/ip-cores/l2p_fifo64/l2p_fifo64.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr_fw/ip-cores/l2p_fifo64/l2p_fifo64.dcp]
add_files -quiet /home/asautaux/yarr_fw/ip-cores/fifo_64x512/fifo_64x512.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr_fw/ip-cores/fifo_64x512/fifo_64x512.dcp]
add_files -quiet /home/asautaux/yarr_fw/ip-cores/fifo_96x512_1/fifo_96x512.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr_fw/ip-cores/fifo_96x512_1/fifo_96x512.dcp]
add_files -quiet /home/asautaux/yarr_fw/ip-cores/fifo_32x512/fifo_32x512.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr_fw/ip-cores/fifo_32x512/fifo_32x512.dcp]
add_files -quiet /home/asautaux/yarr_fw/ip-cores/fifo_27x16/fifo_27x16.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr_fw/ip-cores/fifo_27x16/fifo_27x16.dcp]
add_files -quiet /home/asautaux/yarr_fw/ip-cores/fifo_256x16/fifo_256x16.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr_fw/ip-cores/fifo_256x16/fifo_256x16.dcp]
add_files -quiet /home/asautaux/yarr_fw/ip-cores/fifo_315x16/fifo_315x16.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr_fw/ip-cores/fifo_315x16/fifo_315x16.dcp]
add_files -quiet /home/asautaux/yarr_fw/ip-cores/fifo_4x16/fifo_4x16.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr_fw/ip-cores/fifo_4x16/fifo_4x16.dcp]
add_files -quiet /home/asautaux/yarr_fw/ip-cores/ila_ddr/ila_ddr.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr_fw/ip-cores/ila_ddr/ila_ddr.dcp]
add_files -quiet /home/asautaux/yarr_fw/ip-cores/ila_wsh_pipe/ila_wsh_pipe.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr_fw/ip-cores/ila_wsh_pipe/ila_wsh_pipe.dcp]
add_files -quiet /home/asautaux/yarr_fw/ip-cores/ila_l2p_dma/ila_l2p_dma.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr_fw/ip-cores/ila_l2p_dma/ila_l2p_dma.dcp]
add_files -quiet /home/asautaux/yarr_fw/ip-cores/mig_7series_0/mig_7series_0.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr_fw/ip-cores/mig_7series_0/mig_7series_0.dcp]
add_files -quiet /home/asautaux/yarr_fw/ip-cores/ila_pd_pdm/ila_pd_pdm.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr_fw/ip-cores/ila_pd_pdm/ila_pd_pdm.dcp]
add_files -quiet /home/asautaux/yarr_fw/ip-cores/ila_dma_ctrl_reg/ila_dma_ctrl_reg.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr_fw/ip-cores/ila_dma_ctrl_reg/ila_dma_ctrl_reg.dcp]
add_files -quiet /home/asautaux/yarr_fw/ip-cores/ila_axis/ila_axis.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr_fw/ip-cores/ila_axis/ila_axis.dcp]
add_files -quiet /home/asautaux/yarr_fw/ip-cores/pcie_7x_0/pcie_7x_0.dcp
set_property used_in_implementation false [get_files /home/asautaux/yarr_fw/ip-cores/pcie_7x_0/pcie_7x_0.dcp]
read_ip -quiet /home/asautaux/yarr_fw/ip-cores/l2p_fifo64/l2p_fifo64.xci
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/l2p_fifo64/l2p_fifo64/l2p_fifo64_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/l2p_fifo64/l2p_fifo64/l2p_fifo64.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/l2p_fifo64/l2p_fifo64_ooc.xdc]
set_property is_locked true [get_files /home/asautaux/yarr_fw/ip-cores/l2p_fifo64/l2p_fifo64.xci]

read_ip -quiet /home/asautaux/yarr_fw/ip-cores/fifo_64x512/fifo_64x512.xci
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_64x512/fifo_64x512/fifo_64x512_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_64x512/fifo_64x512/fifo_64x512.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_64x512/fifo_64x512_ooc.xdc]
set_property is_locked true [get_files /home/asautaux/yarr_fw/ip-cores/fifo_64x512/fifo_64x512.xci]

read_ip -quiet /home/asautaux/yarr_fw/ip-cores/fifo_96x512_1/fifo_96x512.xci
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_96x512_1/fifo_96x512/fifo_96x512_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_96x512_1/fifo_96x512/fifo_96x512.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_96x512_1/fifo_96x512_ooc.xdc]
set_property is_locked true [get_files /home/asautaux/yarr_fw/ip-cores/fifo_96x512_1/fifo_96x512.xci]

read_ip -quiet /home/asautaux/yarr_fw/ip-cores/fifo_32x512/fifo_32x512.xci
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_32x512/fifo_32x512/fifo_32x512_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_32x512/fifo_32x512/fifo_32x512.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_32x512/fifo_32x512_ooc.xdc]
set_property is_locked true [get_files /home/asautaux/yarr_fw/ip-cores/fifo_32x512/fifo_32x512.xci]

read_ip -quiet /home/asautaux/yarr_fw/ip-cores/fifo_27x16/fifo_27x16.xci
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_27x16/fifo_27x16/fifo_27x16_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_27x16/fifo_27x16/fifo_27x16.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_27x16/fifo_27x16_ooc.xdc]
set_property is_locked true [get_files /home/asautaux/yarr_fw/ip-cores/fifo_27x16/fifo_27x16.xci]

read_ip -quiet /home/asautaux/yarr_fw/ip-cores/fifo_256x16/fifo_256x16.xci
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_256x16/fifo_256x16/fifo_256x16_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_256x16/fifo_256x16/fifo_256x16.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_256x16/fifo_256x16_ooc.xdc]
set_property is_locked true [get_files /home/asautaux/yarr_fw/ip-cores/fifo_256x16/fifo_256x16.xci]

read_ip -quiet /home/asautaux/yarr_fw/ip-cores/fifo_315x16/fifo_315x16.xci
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_315x16/fifo_315x16/fifo_315x16_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_315x16/fifo_315x16/fifo_315x16.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_315x16/fifo_315x16_ooc.xdc]
set_property is_locked true [get_files /home/asautaux/yarr_fw/ip-cores/fifo_315x16/fifo_315x16.xci]

read_ip -quiet /home/asautaux/yarr_fw/ip-cores/fifo_4x16/fifo_4x16.xci
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_4x16/fifo_4x16/fifo_4x16_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_4x16/fifo_4x16/fifo_4x16.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/fifo_4x16/fifo_4x16_ooc.xdc]
set_property is_locked true [get_files /home/asautaux/yarr_fw/ip-cores/fifo_4x16/fifo_4x16.xci]

read_ip -quiet /home/asautaux/yarr_fw/ip-cores/ila_ddr/ila_ddr.xci
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/ila_ddr/ila_v6_1/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/ila_ddr/ila_ddr_ooc.xdc]
set_property is_locked true [get_files /home/asautaux/yarr_fw/ip-cores/ila_ddr/ila_ddr.xci]

read_ip -quiet /home/asautaux/yarr_fw/ip-cores/ila_wsh_pipe/ila_wsh_pipe.xci
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/ila_wsh_pipe/ila_v6_1/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/ila_wsh_pipe/ila_wsh_pipe_ooc.xdc]
set_property is_locked true [get_files /home/asautaux/yarr_fw/ip-cores/ila_wsh_pipe/ila_wsh_pipe.xci]

read_ip -quiet /home/asautaux/yarr_fw/ip-cores/ila_l2p_dma/ila_l2p_dma.xci
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/ila_l2p_dma/ila_v6_1/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/ila_l2p_dma/ila_l2p_dma_ooc.xdc]
set_property is_locked true [get_files /home/asautaux/yarr_fw/ip-cores/ila_l2p_dma/ila_l2p_dma.xci]

read_ip -quiet /home/asautaux/yarr_fw/ip-cores/mig_7series_0/mig_7series_0.xci
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/mig_7series_0/mig_7series_0/user_design/constraints/mig_7series_0.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/mig_7series_0/mig_7series_0/user_design/constraints/mig_7series_0_ooc.xdc]
set_property is_locked true [get_files /home/asautaux/yarr_fw/ip-cores/mig_7series_0/mig_7series_0.xci]

read_ip -quiet /home/asautaux/yarr_fw/ip-cores/ila_pd_pdm/ila_pd_pdm.xci
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/ila_pd_pdm/ila_v6_1/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/ila_pd_pdm/ila_pd_pdm_ooc.xdc]
set_property is_locked true [get_files /home/asautaux/yarr_fw/ip-cores/ila_pd_pdm/ila_pd_pdm.xci]

read_ip -quiet /home/asautaux/yarr_fw/ip-cores/ila_dma_ctrl_reg/ila_dma_ctrl_reg.xci
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/ila_dma_ctrl_reg/ila_v6_1/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/ila_dma_ctrl_reg/ila_dma_ctrl_reg_ooc.xdc]
set_property is_locked true [get_files /home/asautaux/yarr_fw/ip-cores/ila_dma_ctrl_reg/ila_dma_ctrl_reg.xci]

read_ip -quiet /home/asautaux/yarr_fw/ip-cores/ila_axis/ila_axis.xci
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/ila_axis/ila_v6_1/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/ila_axis/ila_axis_ooc.xdc]
set_property is_locked true [get_files /home/asautaux/yarr_fw/ip-cores/ila_axis/ila_axis.xci]

read_ip -quiet /home/asautaux/yarr_fw/ip-cores/pcie_7x_0/pcie_7x_0.xci
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/pcie_7x_0/source/pcie_7x_0-PCIE_X0Y0.xdc]
set_property used_in_implementation false [get_files -all /home/asautaux/yarr_fw/ip-cores/pcie_7x_0/synth/pcie_7x_0_ooc.xdc]
set_property is_locked true [get_files /home/asautaux/yarr_fw/ip-cores/pcie_7x_0/pcie_7x_0.xci]

read_vhdl -library xil_defaultlib {
  /home/asautaux/yarr_fw/rtl/common/wshexp_core_pkg.vhd
  /home/asautaux/yarr_fw/rtl/wshexp-core/generic_async_fifo_wrapper.vhd
  /home/asautaux/yarr_fw/rtl/ddr3k7-core/ddr3_ctrl_pkg.vhd
  /home/asautaux/yarr_fw/rtl/common/common_pkg.vhd
  /home/asautaux/yarr_fw/rtl/wshexp-core/l2p_fifo.vhd
  /home/asautaux/yarr_fw/rtl/wshexp-core/dma_controller_wb_slave.vhd
  /home/asautaux/yarr_fw/rtl/wshexp-core/l2p_dma_master.vhd
  /home/asautaux/yarr_fw/rtl/wshexp-core/dma_controller.vhd
  /home/asautaux/yarr_fw/rtl/wshexp-core/p2l_dma_master.vhd
  /home/asautaux/yarr_fw/rtl/common/k_bram.vhd
  /home/asautaux/yarr_fw/rtl/wshexp-core/wbmaster32.vhd
  /home/asautaux/yarr_fw/rtl/wshexp-core/p2l_decoder.vhd
  /home/asautaux/yarr_fw/rtl/wshexp-core/debugregisters.vhd
  /home/asautaux/yarr_fw/rtl/wshexp-core/l2p_arbiter.vhd
  /home/asautaux/yarr_fw/rtl/app_package.vhd
  /home/asautaux/yarr_fw/rtl/common/simple_counter.vhd
  /home/asautaux/yarr_fw/rtl/common/bcf_bram32.vhd
  /home/asautaux/yarr_fw/rtl/ddr3k7-core/ddr3_ctrl_wb.vhd
  /home/asautaux/yarr_fw/rtl/app.vhd
  /home/asautaux/yarr_fw/syn/xpressk7/ddr3_revA/top_level.vhd
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/asautaux/yarr_fw/syn/xpressk7/ddr3_revA/xpressk7.xdc
set_property used_in_implementation false [get_files /home/asautaux/yarr_fw/syn/xpressk7/ddr3_revA/xpressk7.xdc]

read_xdc /home/asautaux/yarr_fw/syn/xpressk7/ddr3_revA/xpressk7-ddr3.xdc
set_property used_in_implementation false [get_files /home/asautaux/yarr_fw/syn/xpressk7/ddr3_revA/xpressk7-ddr3.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top top_level -part xc7k160tfbg676-2


write_checkpoint -force -noxdef top_level.dcp

catch { report_utilization -file top_level_utilization_synth.rpt -pb top_level_utilization_synth.pb }