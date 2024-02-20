`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2024 06:00:28 PM
// Design Name: 
// Module Name: small_reg_top
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
//`include "registers.sv"
//`include "fault_injector.sv"


module small_reg_top #(N = 256)(
   input logic clk,
   input logic rst_ni,
   input logic clear_i,     
   input logic valid_i,
   input logic ready_i,
   input logic [31:0] data_i,
   output logic [31:0] data_o,
   output logic ready_o,
   output logic valid_o, 
   output logic [N-1:0] FI_out);
   
   fifo_reg fifo (clk, rst_ni, clear_i, valid_i, ready_i, data_i, data_o, ready_o, valid_o);
   fault_injector fault_injector (clk, rst_ni, FI_out); 
   
   
    

endmodule
