`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2024 04:30:25 PM
// Design Name: 
// Module Name: pseudo_random_generator
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

module lfsr_address_gen #(N = 16)(
    input logic clk,   
    input logic rst_n, 
    input logic [N-1:0] seed, 
    output logic [N-1:0] lfsr_output
);
    reg [N-1:0] lfsr_reg;
    
    always_ff@(posedge clk or negedge rst_n) begin 
        if(~rst_n) lfsr_reg = seed;
        else begin 
        lfsr_reg = lfsr_reg >> 1;
        lfsr_reg[N-1] = (lfsr_reg[N-1] ^ lfsr_reg[N-2]^lfsr_reg[N-3]^lfsr_reg[1]) ;
        end
    end  
    
   assign lfsr_output =(seed == lfsr_reg)?'0:lfsr_reg;

endmodule
