Data flow modelling Verilog Programs
Implimented using using icarus Verilog and GTK wave.
All files uploaded have been personally verified by me Ajaymalolan
Here are some basic linux commands for simulation.
Commands to install icarus verilog:
sudo apt install iverilog
Commands to install gtk wave:
sudo apt install gtkwave
Commands to compile verilog source code and test bench in terminal:
iverilog -o output_file file.v file_tb.v
Command to view output:
vvp output_file
//output_file is generated during compilation.
Command to view output wave form in gtk wave:
gtkwave dumped_file.vcd
//specify dumped_file in testbench file.
