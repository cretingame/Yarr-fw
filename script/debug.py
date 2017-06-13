import os
import subprocess



script_path = os.getcwd() + "/" + os.path.splitext(__file__)[0] + ".tcl"
script_file = open(script_path, "w+")	

os.chdir("..")
project_path = os.getcwd()

script_file.write(
"######################################################\n" +
"# Generated file to open the virtual logic analyyer\n" +
"######################################################\n" +
"\n\n" + 
"#Run " + __file__+ " to generate this file\n\n")

ltx_files = []
ltx_file = None


cmds_debug=(
"start_gui\n" +
"open_hw\n" +
"connect_hw_server\n" +
"open_hw_target\n" +
"current_hw_device [lindex [get_hw_devices] 1]\n" +
"refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 1]\n" +
"set_property PROBES.FILE {}{}{} [lindex [get_hw_devices] 1]\n" +
"refresh_hw_device [lindex [get_hw_devices] 1]\n" +
"display_hw_ila_data [ get_hw_ila_data *]\n"
)

cmds_post_gui=(
"set_property TRIGGER_COMPARE_VALUE eq1'b1 [get_hw_probes app_0/dma_ctrl_start_l2p_s_1 -of_objects [get_hw_ilas -of_objects [get_hw_devices xc7k160t_1] -filter {CELL_NAME=~\"app_0/dbg_0.axis_debug\"}]]\n" + 
"set_property TRIGGER_COMPARE_VALUE eq1'b1 [get_hw_probes app_0/dma_ctrl_start_l2p_s_2 -of_objects [get_hw_ilas -of_objects [get_hw_devices xc7k160t_1] -filter {CELL_NAME=~\"app_0/dbg_2.pipelined_wishbone_debug\"}]]\n" +
"set_property TRIGGER_COMPARE_VALUE eq1'b1 [get_hw_probes app_0/ddr_app_cmd_en_s -of_objects [get_hw_ilas -of_objects [get_hw_devices xc7k160t_1] -filter {CELL_NAME=~\"app_0/dbg_5.ddr_debug\"}]]\n" +
"set_property TRIGGER_COMPARE_VALUE eq1'b1 [get_hw_probes app_0/dma_ctrl_start_l2p_s -of_objects [get_hw_ilas -of_objects [get_hw_devices xc7k160t_1] -filter {CELL_NAME=~\"app_0/dbg_4.l2p_debug\"}]]\n"+
"#run_hw_ila [get_hw_ilas -of_objects [get_hw_devices xc7k160t_1]]\n" +
"#wait_on_hw_ila -timeout 5 [get_hw_ilas -of_objects [get_hw_devices xc7k160t_1]]\n" +
"#display_hw_ila_data [upload_hw_ila_data [get_hw_ilas -of_objects [get_hw_devices xc7k160t_1] -filter {CELL_NAME=~\"app_0/dbg_0.axis_debug\"}]]\n" +
"#display_hw_ila_data [upload_hw_ila_data [get_hw_ilas -of_objects [get_hw_devices xc7k160t_1] -filter {CELL_NAME=~\"app_0/dbg_2.pipelined_wishbone_debug\"}]]\n" +
"#display_hw_ila_data [upload_hw_ila_data [get_hw_ilas -of_objects [get_hw_devices xc7k160t_1] -filter {CELL_NAME=~\"app_0/dbg_5.ddr_debug\"}]]\n"
)

for root, dirs, files in os.walk(project_path):
	for file in files:
		if file.endswith(".ltx"):
			ltx_file =  os.path.join(root, file)
			ltx_files.append(ltx_file)
			#print "Bitfile found : " + ltx_file


if len(ltx_files) == 0 :
	print("No debug file found !\n")
elif len(ltx_files) == 1:
	print("Debug file found : " + ltx_files[0])
	ok = raw_input ("Will you debug with this file [Y/n] ?")
	if ok[0].lower() == 'y':
		ltx_file = ltx_files[0]
		nb = 0
	else:
		ltx_file = None
else:
	print("Several debug files found: ")
	i = 0
	for ltx_file in ltx_files:
		print (str(i) + ": " + ltx_file)
		i = i + 1
	try: 
		nb = input("Choose a file by typing a number: ")
		int(nb)
	except:
		print("You didn't enter a valid number")
		ltx_file = None
	else:
		if nb >= len(ltx_files) or nb < 0 :
			print("You didn't enter a valid number")
			ltx_file = None 




if (ltx_file != None):
	ltx_file = ltx_files[nb]
	cmds = cmds_debug.format('{',ltx_file,'}') + cmds_post_gui
	script_file.write(cmds)
	script_file.flush()
	subprocess.call(["vivado", "-mode", "batch","-source", script_path])
else:
	print "No debug file found !"


script_file.close()
