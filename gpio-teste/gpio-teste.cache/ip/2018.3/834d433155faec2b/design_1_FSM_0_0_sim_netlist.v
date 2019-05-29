// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed May 29 10:41:22 2019
// Host        : DESKTOP-FLPEC93 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_FSM_0_0_sim_netlist.v
// Design      : design_1_FSM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* number_of_bits = "22" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FSM
   (clk,
    word,
    reset,
    result);
  input clk;
  input [21:0]word;
  input reset;
  output [3:0]result;

  wire C_S;
  wire C_S_i_1_n_0;
  wire C_S_i_2_n_0;
  wire clk;
  wire \index[2]_i_1_n_0 ;
  wire \index[4]_i_1_n_0 ;
  wire [4:0]index_reg__0;
  wire \max_n_o_ones[0]_i_1_n_0 ;
  wire \max_n_o_ones[1]_i_1_n_0 ;
  wire \max_n_o_ones[2]_i_1_n_0 ;
  wire \max_n_o_ones[3]_i_1_n_0 ;
  wire \max_n_o_ones[4]_i_11_n_0 ;
  wire \max_n_o_ones[4]_i_12_n_0 ;
  wire \max_n_o_ones[4]_i_13_n_0 ;
  wire \max_n_o_ones[4]_i_14_n_0 ;
  wire \max_n_o_ones[4]_i_1_n_0 ;
  wire \max_n_o_ones[4]_i_2_n_0 ;
  wire \max_n_o_ones[4]_i_3_n_0 ;
  wire \max_n_o_ones[4]_i_4_n_0 ;
  wire \max_n_o_ones[4]_i_5_n_0 ;
  wire \max_n_o_ones[4]_i_7_n_0 ;
  wire \max_n_o_ones[4]_i_8_n_0 ;
  wire \max_n_o_ones_reg[4]_i_10_n_0 ;
  wire \max_n_o_ones_reg[4]_i_6_n_0 ;
  wire \max_n_o_ones_reg[4]_i_9_n_0 ;
  wire \max_n_o_ones_reg_n_0_[0] ;
  wire \max_n_o_ones_reg_n_0_[1] ;
  wire \max_n_o_ones_reg_n_0_[2] ;
  wire \max_n_o_ones_reg_n_0_[3] ;
  wire \max_n_o_ones_reg_n_0_[4] ;
  wire \n_o_ones[4]_i_1_n_0 ;
  wire [4:0]n_o_ones_reg__0;
  wire [4:0]p_0_in;
  wire reset;
  wire [3:0]result;
  wire [21:0]word;

  LUT6 #(
    .INIT(64'h0000000000000008)) 
    C_S_i_1
       (.I0(index_reg__0[2]),
        .I1(index_reg__0[3]),
        .I2(C_S_i_2_n_0),
        .I3(index_reg__0[4]),
        .I4(C_S),
        .I5(reset),
        .O(C_S_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    C_S_i_2
       (.I0(index_reg__0[1]),
        .I1(index_reg__0[0]),
        .O(C_S_i_2_n_0));
  FDRE C_S_reg
       (.C(clk),
        .CE(1'b1),
        .D(C_S_i_1_n_0),
        .Q(C_S),
        .R(1'b0));
  FDRE \Res_reg[0] 
       (.C(clk),
        .CE(C_S),
        .D(\max_n_o_ones_reg_n_0_[0] ),
        .Q(result[0]),
        .R(reset));
  FDRE \Res_reg[1] 
       (.C(clk),
        .CE(C_S),
        .D(\max_n_o_ones_reg_n_0_[1] ),
        .Q(result[1]),
        .R(reset));
  FDRE \Res_reg[2] 
       (.C(clk),
        .CE(C_S),
        .D(\max_n_o_ones_reg_n_0_[2] ),
        .Q(result[2]),
        .R(reset));
  FDRE \Res_reg[3] 
       (.C(clk),
        .CE(C_S),
        .D(\max_n_o_ones_reg_n_0_[3] ),
        .Q(result[3]),
        .R(reset));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \index[0]_i_1 
       (.I0(index_reg__0[0]),
        .O(p_0_in[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \index[1]_i_1 
       (.I0(index_reg__0[0]),
        .I1(index_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \index[2]_i_1 
       (.I0(index_reg__0[0]),
        .I1(index_reg__0[1]),
        .I2(index_reg__0[2]),
        .O(\index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \index[3]_i_1 
       (.I0(index_reg__0[1]),
        .I1(index_reg__0[0]),
        .I2(index_reg__0[2]),
        .I3(index_reg__0[3]),
        .O(p_0_in[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \index[4]_i_1 
       (.I0(reset),
        .I1(C_S),
        .O(\index[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \index[4]_i_2 
       (.I0(index_reg__0[2]),
        .I1(index_reg__0[0]),
        .I2(index_reg__0[1]),
        .I3(index_reg__0[3]),
        .I4(index_reg__0[4]),
        .O(p_0_in[4]));
  FDRE \index_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(index_reg__0[0]),
        .R(\index[4]_i_1_n_0 ));
  FDRE \index_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(index_reg__0[1]),
        .R(\index[4]_i_1_n_0 ));
  FDRE \index_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\index[2]_i_1_n_0 ),
        .Q(index_reg__0[2]),
        .R(\index[4]_i_1_n_0 ));
  FDRE \index_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(index_reg__0[3]),
        .R(\index[4]_i_1_n_0 ));
  FDRE \index_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(index_reg__0[4]),
        .R(\index[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \max_n_o_ones[0]_i_1 
       (.I0(n_o_ones_reg__0[0]),
        .O(\max_n_o_ones[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \max_n_o_ones[1]_i_1 
       (.I0(n_o_ones_reg__0[0]),
        .I1(n_o_ones_reg__0[1]),
        .O(\max_n_o_ones[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \max_n_o_ones[2]_i_1 
       (.I0(n_o_ones_reg__0[0]),
        .I1(n_o_ones_reg__0[1]),
        .I2(n_o_ones_reg__0[2]),
        .O(\max_n_o_ones[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \max_n_o_ones[3]_i_1 
       (.I0(n_o_ones_reg__0[1]),
        .I1(n_o_ones_reg__0[0]),
        .I2(n_o_ones_reg__0[2]),
        .I3(n_o_ones_reg__0[3]),
        .O(\max_n_o_ones[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \max_n_o_ones[4]_i_1 
       (.I0(C_S),
        .I1(reset),
        .O(\max_n_o_ones[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_n_o_ones[4]_i_11 
       (.I0(word[3]),
        .I1(word[2]),
        .I2(index_reg__0[1]),
        .I3(word[1]),
        .I4(index_reg__0[0]),
        .I5(word[0]),
        .O(\max_n_o_ones[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_n_o_ones[4]_i_12 
       (.I0(word[7]),
        .I1(word[6]),
        .I2(index_reg__0[1]),
        .I3(word[5]),
        .I4(index_reg__0[0]),
        .I5(word[4]),
        .O(\max_n_o_ones[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_n_o_ones[4]_i_13 
       (.I0(word[11]),
        .I1(word[10]),
        .I2(index_reg__0[1]),
        .I3(word[9]),
        .I4(index_reg__0[0]),
        .I5(word[8]),
        .O(\max_n_o_ones[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_n_o_ones[4]_i_14 
       (.I0(word[15]),
        .I1(word[14]),
        .I2(index_reg__0[1]),
        .I3(word[13]),
        .I4(index_reg__0[0]),
        .I5(word[12]),
        .O(\max_n_o_ones[4]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00008A80)) 
    \max_n_o_ones[4]_i_2 
       (.I0(\max_n_o_ones[4]_i_4_n_0 ),
        .I1(\max_n_o_ones[4]_i_5_n_0 ),
        .I2(index_reg__0[4]),
        .I3(\max_n_o_ones_reg[4]_i_6_n_0 ),
        .I4(reset),
        .O(\max_n_o_ones[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \max_n_o_ones[4]_i_3 
       (.I0(n_o_ones_reg__0[2]),
        .I1(n_o_ones_reg__0[0]),
        .I2(n_o_ones_reg__0[1]),
        .I3(n_o_ones_reg__0[3]),
        .I4(n_o_ones_reg__0[4]),
        .O(\max_n_o_ones[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB2FF00B2)) 
    \max_n_o_ones[4]_i_4 
       (.I0(\max_n_o_ones[4]_i_7_n_0 ),
        .I1(\max_n_o_ones_reg_n_0_[3] ),
        .I2(n_o_ones_reg__0[3]),
        .I3(\max_n_o_ones_reg_n_0_[4] ),
        .I4(n_o_ones_reg__0[4]),
        .O(\max_n_o_ones[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \max_n_o_ones[4]_i_5 
       (.I0(word[21]),
        .I1(index_reg__0[0]),
        .I2(word[20]),
        .I3(index_reg__0[2]),
        .I4(\max_n_o_ones[4]_i_8_n_0 ),
        .O(\max_n_o_ones[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    \max_n_o_ones[4]_i_7 
       (.I0(\max_n_o_ones_reg_n_0_[0] ),
        .I1(n_o_ones_reg__0[0]),
        .I2(\max_n_o_ones_reg_n_0_[1] ),
        .I3(n_o_ones_reg__0[1]),
        .I4(\max_n_o_ones_reg_n_0_[2] ),
        .I5(n_o_ones_reg__0[2]),
        .O(\max_n_o_ones[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \max_n_o_ones[4]_i_8 
       (.I0(word[19]),
        .I1(word[18]),
        .I2(index_reg__0[1]),
        .I3(word[17]),
        .I4(index_reg__0[0]),
        .I5(word[16]),
        .O(\max_n_o_ones[4]_i_8_n_0 ));
  FDRE \max_n_o_ones_reg[0] 
       (.C(clk),
        .CE(\max_n_o_ones[4]_i_2_n_0 ),
        .D(\max_n_o_ones[0]_i_1_n_0 ),
        .Q(\max_n_o_ones_reg_n_0_[0] ),
        .R(\max_n_o_ones[4]_i_1_n_0 ));
  FDRE \max_n_o_ones_reg[1] 
       (.C(clk),
        .CE(\max_n_o_ones[4]_i_2_n_0 ),
        .D(\max_n_o_ones[1]_i_1_n_0 ),
        .Q(\max_n_o_ones_reg_n_0_[1] ),
        .R(\max_n_o_ones[4]_i_1_n_0 ));
  FDRE \max_n_o_ones_reg[2] 
       (.C(clk),
        .CE(\max_n_o_ones[4]_i_2_n_0 ),
        .D(\max_n_o_ones[2]_i_1_n_0 ),
        .Q(\max_n_o_ones_reg_n_0_[2] ),
        .R(\max_n_o_ones[4]_i_1_n_0 ));
  FDRE \max_n_o_ones_reg[3] 
       (.C(clk),
        .CE(\max_n_o_ones[4]_i_2_n_0 ),
        .D(\max_n_o_ones[3]_i_1_n_0 ),
        .Q(\max_n_o_ones_reg_n_0_[3] ),
        .R(\max_n_o_ones[4]_i_1_n_0 ));
  FDRE \max_n_o_ones_reg[4] 
       (.C(clk),
        .CE(\max_n_o_ones[4]_i_2_n_0 ),
        .D(\max_n_o_ones[4]_i_3_n_0 ),
        .Q(\max_n_o_ones_reg_n_0_[4] ),
        .R(\max_n_o_ones[4]_i_1_n_0 ));
  MUXF7 \max_n_o_ones_reg[4]_i_10 
       (.I0(\max_n_o_ones[4]_i_13_n_0 ),
        .I1(\max_n_o_ones[4]_i_14_n_0 ),
        .O(\max_n_o_ones_reg[4]_i_10_n_0 ),
        .S(index_reg__0[2]));
  MUXF8 \max_n_o_ones_reg[4]_i_6 
       (.I0(\max_n_o_ones_reg[4]_i_9_n_0 ),
        .I1(\max_n_o_ones_reg[4]_i_10_n_0 ),
        .O(\max_n_o_ones_reg[4]_i_6_n_0 ),
        .S(index_reg__0[3]));
  MUXF7 \max_n_o_ones_reg[4]_i_9 
       (.I0(\max_n_o_ones[4]_i_11_n_0 ),
        .I1(\max_n_o_ones[4]_i_12_n_0 ),
        .O(\max_n_o_ones_reg[4]_i_9_n_0 ),
        .S(index_reg__0[2]));
  LUT5 #(
    .INIT(32'hFFFFBABF)) 
    \n_o_ones[4]_i_1 
       (.I0(reset),
        .I1(\max_n_o_ones[4]_i_5_n_0 ),
        .I2(index_reg__0[4]),
        .I3(\max_n_o_ones_reg[4]_i_6_n_0 ),
        .I4(C_S),
        .O(\n_o_ones[4]_i_1_n_0 ));
  FDRE \n_o_ones_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\max_n_o_ones[0]_i_1_n_0 ),
        .Q(n_o_ones_reg__0[0]),
        .R(\n_o_ones[4]_i_1_n_0 ));
  FDRE \n_o_ones_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\max_n_o_ones[1]_i_1_n_0 ),
        .Q(n_o_ones_reg__0[1]),
        .R(\n_o_ones[4]_i_1_n_0 ));
  FDRE \n_o_ones_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\max_n_o_ones[2]_i_1_n_0 ),
        .Q(n_o_ones_reg__0[2]),
        .R(\n_o_ones[4]_i_1_n_0 ));
  FDRE \n_o_ones_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\max_n_o_ones[3]_i_1_n_0 ),
        .Q(n_o_ones_reg__0[3]),
        .R(\n_o_ones[4]_i_1_n_0 ));
  FDRE \n_o_ones_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\max_n_o_ones[4]_i_3_n_0 ),
        .Q(n_o_ones_reg__0[4]),
        .R(\n_o_ones[4]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_FSM_0_0,FSM,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "FSM,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    word,
    reset,
    result);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input clk;
  input [21:0]word;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  output [3:0]result;

  wire clk;
  wire reset;
  wire [3:0]result;
  wire [21:0]word;

  (* number_of_bits = "22" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FSM U0
       (.clk(clk),
        .reset(reset),
        .result(result),
        .word(word));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
