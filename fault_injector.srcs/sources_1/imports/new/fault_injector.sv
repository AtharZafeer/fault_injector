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

module fault_injector #(N = 4, 
    DELAY_CYCLES = 100, 
    PULSE_LENGTH = 2, 
    counter_width = 32
    )(
    input clk, input rstn,
    output logic FI_out [N-1]);
   //reg rstn_counter;
   reg [counter_width-1:0] FI_counter_output;
   //fault_injector_counter fault_injector_counter (.clk(clk), .rstn(rstn), .FI_counter_output(FI_counter_output));
   
   typedef enum logic [1:0] {
    IDLE, DELAY, PULSE
   } FI_STATE;
   
   FI_STATE current_state, next_state;
  
   always_ff @(posedge clk or negedge rstn) begin 
    if(~rstn) begin
        current_state <= IDLE;
         FI_counter_output = 0;
         for(int i =0; i < N; i++) FI_out[i] = 0;
        //rstn_counter = 0;
        end
    else begin
        current_state <= next_state;
        if(FI_counter_output <= (DELAY_CYCLES + PULSE_LENGTH)) FI_counter_output+=1;
        else FI_counter_output = 0;
        if(current_state == PULSE || current_state == DELAY) for(int i =0; i < N; i++) FI_out[i] = 1;
        else if(current_state == IDLE) for(int i =0; i < N; i++) FI_out[i] = 0;
        end
    end
  
   always_comb
   begin
    case(current_state)
        IDLE: begin 
            if(FI_counter_output == DELAY_CYCLES)
                next_state = DELAY;
            else  next_state = IDLE;   
        end
        DELAY: begin 
            //rstn_counter = 1;
            if(FI_counter_output < (DELAY_CYCLES + PULSE_LENGTH)) 
                next_state = PULSE;
            else begin 
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

