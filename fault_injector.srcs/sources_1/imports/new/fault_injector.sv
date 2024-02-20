`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2024 02:05:23 PM
// Design Name: 
// Module Name: fault_injector
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
/*
module fault_injector_counter #(counter_width = 32)
  (
    input logic clk,
    input logic rstn,
    output logic [counter_width-1:0] FI_counter_output
  );
   always_ff @(posedge clk or negedge rstn) begin : fault_reg_counter
    if(~rstn) begin
        FI_counter_output = 0;
    end
    else FI_counter_output = FI_counter_output + 1;
   end 
    
endmodule
*/  

module fault_injector #(
parameter N = 256, //output port size
parameter DELAY_CYCLES = 100, 
parameter PULSE_LENGTH = 2, 
parameter counter_width = 32,
parameter address_width = 8
    )(
    input clk, input rstn,
    output logic [N-1:0] FI_out);
    
   reg [address_width-1:0] seed = 7'hAA;   
   reg [counter_width-1:0] FI_counter_output;
   
   typedef enum logic [1:0] {
    IDLE, DELAY, PULSE
   } FI_STATE;
   
   FI_STATE current_state, next_state;
   
   reg [address_width-1:0] gen_address_reg, hold_gen_address_reg;
   reg address_gen_start_bit ='0; //start bit to start the pseduo random generator 
   lfsr_address_gen  #(.address_width(address_width)) 
   generated_address (.clk(clk),.rstn(rstn),.seed(seed),.start_bit(address_gen_start_bit), .lfsr_output(gen_address_reg));
   
   always_ff @(posedge clk or negedge rstn) begin 
    if(~rstn) begin
        current_state <= IDLE;
         FI_counter_output <= '0;
         hold_gen_address_reg <= '0;
         for(int i =0; i < N; i++) FI_out[i] <= 0;
        //rstn_counter = 0;
        end
    else begin
        current_state <= next_state;
        
        if(FI_counter_output <= (DELAY_CYCLES + PULSE_LENGTH)) FI_counter_output+=1; //this checks if the counter has counted to the delay cycle or not and increments counter every clock cycle
        else FI_counter_output <= 0; //else once the pulse is done, reset the counter
        
        if(current_state == PULSE || current_state == DELAY) begin  //this gives the pulse between the time of delay value and until the end the pulse value
            FI_out[hold_gen_address_reg] <= 1; 
        end  
        else if(current_state == IDLE)  begin 
            hold_gen_address_reg <= gen_address_reg;
            for(int i = 0; i < N; i++)  
                FI_out[i] <= 0; //if in idle state make output zero 
        end 
        
        end
    end
  
   always_comb
   begin
    case(current_state)
        IDLE: begin 
            if(FI_counter_output == DELAY_CYCLES) begin   
                address_gen_start_bit <= '1;   
                next_state = DELAY; 
            end
            else  next_state = IDLE;   
        end
        DELAY: begin 
            //rstn_counter = 1;
            if(FI_counter_output < (DELAY_CYCLES + PULSE_LENGTH)) 
                next_state = PULSE;
            else begin
                address_gen_start_bit <= '0; 
                next_state = IDLE;
                 
            end
        end
        PULSE: begin
            next_state = DELAY;
        end
        default: next_state = IDLE;
    endcase
    
   end 
   
endmodule

