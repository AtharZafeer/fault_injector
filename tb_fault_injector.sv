`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2024 04:10:29 PM
// Design Name: 
// Module Name: tb_fault_injector
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`include "fault_injector.srcs/sources_1/imports/new/fault_injector.sv"

module tb_fault_injector();

parameter N = 256;
parameter DELAY_CYCLES = 100;
parameter PULSE_LENGTH = 2;
parameter counter_width = 32;
parameter address_width = 8;

logic clk_i;
logic rstn;
logic [N-1:0] FI_out;


fault_injector #(.N(N), .DELAY_CYCLES(DELAY_CYCLES),.PULSE_LENGTH(PULSE_LENGTH),.counter_width(counter_width),.address_width(address_width))
 DUT(.clk(clk_i), .rstn(rstn), .FI_out( FI_out));

initial clk_i = 1'b0;  
always  begin
    #1 clk_i = !clk_i;
end
initial begin 

    #0
    rstn = 0;
    #100
    rstn = 1;
    #2
    rstn = 0;
    #2
    rstn = 1;
    #350
    rstn = 1;
    #350
    $stop;
end
endmodule