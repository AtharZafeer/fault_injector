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

//lfsr keeps giving new address every clock cycle, the chances of repititon is gets lower by increasing the number of bits to flip,
//change based on the address byte width requirement you have when you know the value of number of registers in the design you are trying to integrate this
//Generate a new address every clock cycle

module lfsr_address_gen #(address_width = 8)  // N-> number of registers that makes up the shift regiter

(
    input logic clk,   
    input logic rstn, 
    input logic [address_width-1:0] seed,input logic start_bit, 
    output logic [address_width-1:0] lfsr_output
);
    reg [address_width-1:0] lfsr_reg;
    
    always_ff@(posedge clk or negedge rstn) begin 
        if(~rstn) lfsr_reg = seed; //soft reset to seed value (which can be anything other than Zero
        else if(start_bit) begin 
                lfsr_reg = lfsr_reg >> 1; //shift by 1
                lfsr_reg[address_width-1] = (lfsr_reg[address_width-1] ^ lfsr_reg[address_width-2]^lfsr_reg[address_width-3]^lfsr_reg[1]) ; // XOR logic
        end
    end  
    
   assign lfsr_output =(seed == lfsr_reg)?'0:lfsr_reg; //if it repeats, make seed value = 0x0 which stops the shift regiter until reset

endmodule
