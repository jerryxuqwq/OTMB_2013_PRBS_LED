`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:17:23 10/21/2024 
// Design Name: 
// Module Name:    counter_tb 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module counter_tb(
    );

reg clk, reset, trig;
wire [0:1] counter;

counter_noover dut(clk, trig ,reset, counter);

initial begin	
	clk=0;
	forever #5 clk=~clk;
end
	
initial begin 
	trig=0;
	forever #10 trig=~trig;
end

initial begin
	reset=0;
	#20;
	reset=1;
	#40;
	reset=0;
	#200;
	reset=~reset;
	#210;
	reset=~reset;
	
end
endmodule 
