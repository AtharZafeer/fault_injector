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


module tb_fault_injector();

parameter N = 4;

logic clk_i;
logic rstn;
logic FI_out[N-1];


fault_injector DUT(clk_i, rstn, FI_out[0:N-1]);

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