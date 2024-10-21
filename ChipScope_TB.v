`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:37:42 09/23/2024 
// Design Name: 
// Module Name:    ChipScope_TB 
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
module ChipScope_TB(
	input wire [7:0]rxn,
	input wire [7:0]rxp,
	output wire [0:7]txn,
	output wire [0:7]txp,
	input wire clk160p,
	input wire clk160n,
		   
	input wire clk40p,
	input wire clk40n,
	
	input wire [50:0] _ccb_rx
    );
	
	wire [0:7]led_fp;
	
	wire reset;
	wire inject;
	wire slow_clk40;
	wire clk40;
		wire txusrclk2;
		wire [0:7]PRBS_error;
		wire [0:3]state_status;
Top top_tb(
	.rxn(rxn),
	.rxp(rxp),
	.txn(txn),
	.txp(txp),
	.led_fp(led_fp),		   
	.reset(reset),
	.inject(inject),
	.clk160p(clk160p),
	.clk160n(clk160n),
	.clk40p(clk40p),
	.clk40n(clk40n),
	.slow_clk40(slow_clk40),
	.clk40(clk40),
	._ccb_rx(_ccb_rx),
	.txusrclk2(txusrclk2),
	.PRBS_error(PRBS_error),
	.state_status(state_status)
    );
	
	wire [35:0] data_vio_control;
	wire [35:0] data_ila_control;
    data_vio shared_vio_i
    (
	.CONTROL                        (data_vio_control),
	.CLK							(txusrclk2),
	.SYNC_IN							(led_fp),
	.SYNC_OUT							({reset,inject})
    );
	
	i_ila ccb_data_mon (
    .CONTROL(data_ila_control), // INOUT BUS [35:0]
    .CLK(txusrclk2), // IN
    .TRIG0({state_status,PRBS_error}) // IN BUS [49:0]
);
	
    icon i_icon
    (
      .CONTROL0                         (data_vio_control),
	  .CONTROL1                         (data_ila_control)
    );

endmodule



