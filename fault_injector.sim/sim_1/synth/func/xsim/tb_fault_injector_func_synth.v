// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sat Feb 17 21:49:10 2024
// Host        : compute running 64-bit Ubuntu 22.04.1 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/azafeer/Desktop/test/fault_injector/fault_injector.sim/sim_1/synth/func/xsim/tb_fault_injector_func_synth.v
// Design      : fault_injector
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DELAY_CYCLES = "100" *) (* N = "4" *) (* PULSE_LENGTH = "2" *) 
(* counter_width = "32" *) 
(* NotValidForBitStream *)
module fault_injector
   (clk,
    rstn,
    \FI_out[0] ,
    \FI_out[1] ,
    \FI_out[2] );
  input clk;
  input rstn;
  output \FI_out[0] ;
  output \FI_out[1] ;
  output \FI_out[2] ;

  wire [6:0]FI_counter_output;
  wire \FI_counter_output[0]_i_1_n_0 ;
  wire \FI_counter_output[1]_i_1_n_0 ;
  wire \FI_counter_output[2]_i_1_n_0 ;
  wire \FI_counter_output[3]_i_1_n_0 ;
  wire \FI_counter_output[4]_i_1_n_0 ;
  wire \FI_counter_output[5]_i_1_n_0 ;
  wire \FI_counter_output[6]_i_1_n_0 ;
  wire \FI_counter_output[6]_i_2_n_0 ;
  wire FI_out;
  wire \FI_out[0] ;
  wire \FI_out[0]_i_1_n_0 ;
  wire \FI_out[0]_i_2_n_0 ;
  wire \FI_out[1] ;
  wire \FI_out[2] ;
  wire \FI_out_reg_n_0_[0] ;
  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[0]_i_2_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_2_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_2_n_0 ;
  wire \FSM_onehot_current_state[2]_i_3_n_0 ;
  wire \FSM_onehot_current_state[2]_i_4_n_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[1] ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire rstn;
  wire rstn_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00001FFF)) 
    \FI_counter_output[0]_i_1 
       (.I0(FI_counter_output[3]),
        .I1(FI_counter_output[4]),
        .I2(FI_counter_output[5]),
        .I3(FI_counter_output[6]),
        .I4(FI_counter_output[0]),
        .O(\FI_counter_output[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000777F777F0000)) 
    \FI_counter_output[1]_i_1 
       (.I0(FI_counter_output[6]),
        .I1(FI_counter_output[5]),
        .I2(FI_counter_output[4]),
        .I3(FI_counter_output[3]),
        .I4(FI_counter_output[0]),
        .I5(FI_counter_output[1]),
        .O(\FI_counter_output[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00ABABABAB000000)) 
    \FI_counter_output[2]_i_1 
       (.I0(\FSM_onehot_current_state[2]_i_4_n_0 ),
        .I1(FI_counter_output[4]),
        .I2(FI_counter_output[3]),
        .I3(FI_counter_output[1]),
        .I4(FI_counter_output[0]),
        .I5(FI_counter_output[2]),
        .O(\FI_counter_output[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h007F7F7F00808080)) 
    \FI_counter_output[3]_i_1 
       (.I0(FI_counter_output[1]),
        .I1(FI_counter_output[0]),
        .I2(FI_counter_output[2]),
        .I3(FI_counter_output[6]),
        .I4(FI_counter_output[5]),
        .I5(FI_counter_output[3]),
        .O(\FI_counter_output[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \FI_counter_output[4]_i_1 
       (.I0(FI_counter_output[2]),
        .I1(FI_counter_output[0]),
        .I2(FI_counter_output[1]),
        .I3(FI_counter_output[3]),
        .I4(\FSM_onehot_current_state[2]_i_4_n_0 ),
        .I5(FI_counter_output[4]),
        .O(\FI_counter_output[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h435050D0)) 
    \FI_counter_output[5]_i_1 
       (.I0(FI_counter_output[6]),
        .I1(\FI_counter_output[6]_i_2_n_0 ),
        .I2(FI_counter_output[5]),
        .I3(FI_counter_output[4]),
        .I4(FI_counter_output[3]),
        .O(\FI_counter_output[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h525050D0)) 
    \FI_counter_output[6]_i_1 
       (.I0(FI_counter_output[5]),
        .I1(\FI_counter_output[6]_i_2_n_0 ),
        .I2(FI_counter_output[6]),
        .I3(FI_counter_output[4]),
        .I4(FI_counter_output[3]),
        .O(\FI_counter_output[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FI_counter_output[6]_i_2 
       (.I0(FI_counter_output[1]),
        .I1(FI_counter_output[0]),
        .I2(FI_counter_output[2]),
        .O(\FI_counter_output[6]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \FI_counter_output_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .D(\FI_counter_output[0]_i_1_n_0 ),
        .Q(FI_counter_output[0]));
  FDCE #(
    .INIT(1'b0)) 
    \FI_counter_output_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .D(\FI_counter_output[1]_i_1_n_0 ),
        .Q(FI_counter_output[1]));
  FDCE #(
    .INIT(1'b0)) 
    \FI_counter_output_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .D(\FI_counter_output[2]_i_1_n_0 ),
        .Q(FI_counter_output[2]));
  FDCE #(
    .INIT(1'b0)) 
    \FI_counter_output_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .D(\FI_counter_output[3]_i_1_n_0 ),
        .Q(FI_counter_output[3]));
  FDCE #(
    .INIT(1'b0)) 
    \FI_counter_output_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .D(\FI_counter_output[4]_i_1_n_0 ),
        .Q(FI_counter_output[4]));
  FDCE #(
    .INIT(1'b0)) 
    \FI_counter_output_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .D(\FI_counter_output[5]_i_1_n_0 ),
        .Q(FI_counter_output[5]));
  FDCE #(
    .INIT(1'b0)) 
    \FI_counter_output_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .D(\FI_counter_output[6]_i_1_n_0 ),
        .Q(FI_counter_output[6]));
  OBUF \FI_out[0]_INST_0 
       (.I(\FI_out_reg_n_0_[0] ),
        .O(\FI_out[0] ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FI_out[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(FI_out),
        .O(\FI_out[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FI_out[0]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FI_out[0]_i_2_n_0 ));
  OBUF \FI_out[1]_INST_0 
       (.I(\FI_out_reg_n_0_[0] ),
        .O(\FI_out[1] ));
  OBUF \FI_out[2]_INST_0 
       (.I(\FI_out_reg_n_0_[0] ),
        .O(\FI_out[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \FI_out_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FI_out[0]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .D(\FI_out[0]_i_2_n_0 ),
        .Q(\FI_out_reg_n_0_[0] ));
  LUT6 #(
    .INIT(64'hAAA8FFFFAAA8AAA8)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(FI_out),
        .I1(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I2(FI_counter_output[0]),
        .I3(\FSM_onehot_current_state[2]_i_4_n_0 ),
        .I4(\FSM_onehot_current_state[0]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777777777777FFF)) 
    \FSM_onehot_current_state[0]_i_2 
       (.I0(FI_counter_output[6]),
        .I1(FI_counter_output[5]),
        .I2(FI_counter_output[1]),
        .I3(FI_counter_output[2]),
        .I4(FI_counter_output[3]),
        .I5(FI_counter_output[4]),
        .O(\FSM_onehot_current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0100010001FF0100)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I1(FI_counter_output[0]),
        .I2(\FSM_onehot_current_state[2]_i_4_n_0 ),
        .I3(FI_out),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_onehot_current_state[1]_i_2 
       (.I0(FI_counter_output[2]),
        .I1(FI_counter_output[1]),
        .I2(FI_counter_output[4]),
        .I3(FI_counter_output[3]),
        .O(\FSM_onehot_current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444444400040404)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(FI_out),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .I3(FI_counter_output[2]),
        .I4(FI_counter_output[1]),
        .I5(\FSM_onehot_current_state[2]_i_4_n_0 ),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_current_state[2]_i_2 
       (.I0(rstn_IBUF),
        .O(\FSM_onehot_current_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_current_state[2]_i_3 
       (.I0(FI_counter_output[3]),
        .I1(FI_counter_output[4]),
        .O(\FSM_onehot_current_state[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_current_state[2]_i_4 
       (.I0(FI_counter_output[5]),
        .I1(FI_counter_output[6]),
        .O(\FSM_onehot_current_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "DELAY:010,IDLE:001,PULSE:100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .PRE(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .Q(FI_out));
  (* FSM_ENCODED_STATES = "DELAY:010,IDLE:001,PULSE:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "DELAY:010,IDLE:001,PULSE:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[2]_i_2_n_0 ),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rstn_IBUF_inst
       (.I(rstn),
        .O(rstn_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
