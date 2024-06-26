// -------------------------------------------------------------
// 
// File Name: hdl_prj\hdlsrc\Lab2_farrow_impl2\Farrow_Canonic.v
// Created: 2024-04-24 18:12:45
// 
// Generated by MATLAB 9.12 and HDL Coder 3.20
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 0.0001
// Target subsystem base rate: 0.0001
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        0.0001
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// Out1                          ce_out        0.0001
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Farrow_Canonic
// Source Path: Lab2_farrow_impl2/Farrow_Canonic
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Farrow_Canonic
          (clk,
           reset,
           clk_enable,
           In1,
           In2,
           ce_out,
           Out1);


  input   clk;
  input   reset;
  input   clk_enable;
  input   signed [15:0] In1;  // sfix16_En14
  input   [11:0] In2;  // ufix12_En8
  output  ce_out;
  output  signed [15:0] Out1;  // sfix16_En14


  wire enb;
  reg signed [15:0] Delay_out1;  // sfix16_En14
  reg signed [15:0] Delay13_out1;  // sfix16_En14
  reg signed [15:0] Delay17_out1;  // sfix16_En14
  reg signed [15:0] Delay20_out1;  // sfix16_En14
  reg signed [15:0] Delay8_out1;  // sfix16_En14
  reg signed [15:0] Delay9_out1;  // sfix16_En14
  reg signed [15:0] Delay10_out1;  // sfix16_En14
  wire signed [31:0] Gain1_mul_temp;  // sfix32_En31
  wire signed [23:0] Gain1_out1;  // sfix24_En20
  wire signed [31:0] Gain14_mul_temp;  // sfix32_En30
  wire signed [31:0] Gain14_1;  // sfix32
  wire signed [15:0] Gain14_out1;  // sfix16_En14
  wire signed [31:0] Gain5_mul_temp;  // sfix32_En30
  wire signed [23:0] Gain5_out1;  // sfix24_En20
  wire signed [24:0] Add8_add_cast;  // sfix25_En20
  wire signed [24:0] Add8_add_cast_1;  // sfix25_En20
  wire signed [24:0] Add8_out1;  // sfix25_En20
  wire signed [25:0] Add7_add_cast;  // sfix26_En20
  wire signed [25:0] Add7_add_cast_1;  // sfix26_En20
  wire signed [25:0] Add7_out1;  // sfix26_En20
  wire signed [26:0] Add6_add_cast;  // sfix27_En20
  wire signed [26:0] Add6_add_cast_1;  // sfix27_En20
  wire signed [26:0] Add6_add_temp;  // sfix27_En20
  wire signed [23:0] Add6_out1;  // sfix24_En20
  reg signed [15:0] Delay5_out1;  // sfix16_En14
  reg signed [15:0] Delay6_out1;  // sfix16_En14
  wire signed [31:0] Gain4_cast;  // sfix32_En29
  wire signed [15:0] Gain4_out1;  // sfix16_En14
  wire signed [31:0] Gain2_cast;  // sfix32_En29
  wire signed [15:0] Gain2_out1;  // sfix16_En14
  wire signed [16:0] Add11_sub_cast;  // sfix17_En14
  wire signed [16:0] Add11_sub_cast_1;  // sfix17_En14
  wire signed [16:0] Add11_out1;  // sfix17_En14
  wire signed [17:0] Add10_add_cast;  // sfix18_En14
  wire signed [17:0] Add10_add_cast_1;  // sfix18_En14
  wire signed [17:0] Add10_out1;  // sfix18_En14
  reg signed [15:0] Delay2_out1;  // sfix16_En14
  reg signed [15:0] Delay3_out1;  // sfix16_En14
  wire signed [31:0] Gain3_cast;  // sfix32_En29
  wire signed [15:0] Gain3_out1;  // sfix16_En14
  reg signed [15:0] Delay4_out1;  // sfix16_En14
  wire signed [31:0] Gain6_mul_temp;  // sfix32_En31
  wire signed [23:0] Gain6_out1;  // sfix24_En20
  wire signed [31:0] Gain7_mul_temp;  // sfix32_En30
  wire signed [31:0] Gain7_1;  // sfix32
  wire signed [15:0] Gain7_out1;  // sfix16_En14
  wire signed [31:0] Gain_mul_temp;  // sfix32_En31
  wire signed [23:0] Gain_out1;  // sfix24_En20
  wire signed [24:0] Add14_add_cast;  // sfix25_En20
  wire signed [24:0] Add14_add_cast_1;  // sfix25_En20
  wire signed [24:0] Add14_out1;  // sfix25_En20
  wire signed [25:0] Add13_add_cast;  // sfix26_En20
  wire signed [25:0] Add13_add_cast_1;  // sfix26_En20
  wire signed [25:0] Add13_out1;  // sfix26_En20
  wire signed [26:0] Add12_add_cast;  // sfix27_En20
  wire signed [26:0] Add12_add_cast_1;  // sfix27_En20
  wire signed [26:0] Add12_add_temp;  // sfix27_En20
  wire signed [23:0] Add12_out1;  // sfix24_En20
  reg signed [23:0] Delay7_out1;  // sfix24_En20
  reg [11:0] Delay14_out1;  // ufix12_En8
  reg [11:0] Delay12_out1;  // ufix12_En8
  wire signed [12:0] Product2_cast;  // sfix13_En8
  wire signed [36:0] Product2_mul_temp;  // sfix37_En28
  wire signed [35:0] Product2_cast_1;  // sfix36_En28
  wire signed [23:0] Product2_out1;  // sfix24_En20
  wire signed [24:0] Add5_add_cast;  // sfix25_En20
  wire signed [24:0] Add5_add_cast_1;  // sfix25_En20
  wire signed [24:0] Add5_add_temp;  // sfix25_En20
  wire signed [23:0] Add5_out1;  // sfix24_En20
  reg signed [23:0] Delay15_out1;  // sfix24_En20
  reg [11:0] Delay16_out1;  // ufix12_En8
  wire signed [12:0] Product_cast;  // sfix13_En8
  wire signed [36:0] Product_mul_temp;  // sfix37_En28
  wire signed [35:0] Product_cast_1;  // sfix36_En28
  wire signed [23:0] Product_out1;  // sfix24_En20
  wire signed [23:0] Add4_out1;  // sfix24_En20
  reg signed [23:0] Delay19_out1;  // sfix24_En20
  reg signed [15:0] Delay11_out1;  // sfix16_En14
  reg [11:0] Delay18_out1;  // ufix12_En8
  wire signed [12:0] Product1_cast;  // sfix13_En8
  wire signed [36:0] Product1_mul_temp;  // sfix37_En28
  wire signed [35:0] Product1_out1;  // sfix36_En28
  wire signed [36:0] Add3_add_cast;  // sfix37_En28
  wire signed [36:0] Add3_add_cast_1;  // sfix37_En28
  wire signed [36:0] Add3_add_temp;  // sfix37_En28
  wire signed [15:0] Add3_out1;  // sfix16_En14
  reg signed [15:0] Delay1_out1;  // sfix16_En14


  assign enb = clk_enable;

  always @(posedge clk or posedge reset)
    begin : Delay_process
      if (reset == 1'b1) begin
        Delay_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay_out1 <= In1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : Delay13_process
      if (reset == 1'b1) begin
        Delay13_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay13_out1 <= Delay_out1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : Delay17_process
      if (reset == 1'b1) begin
        Delay17_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay17_out1 <= Delay13_out1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : Delay20_process
      if (reset == 1'b1) begin
        Delay20_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay20_out1 <= Delay17_out1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : Delay8_process
      if (reset == 1'b1) begin
        Delay8_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay8_out1 <= Delay17_out1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : Delay9_process
      if (reset == 1'b1) begin
        Delay9_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay9_out1 <= Delay8_out1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : Delay10_process
      if (reset == 1'b1) begin
        Delay10_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay10_out1 <= Delay9_out1;
        end
      end
    end



  assign Gain1_mul_temp = 16'sb1010101010101011 * Delay10_out1;
  assign Gain1_out1 = ({{3{Gain1_mul_temp[31]}}, Gain1_mul_temp[31:11]}) + $signed({1'b0, Gain1_mul_temp[10] & (( ~ Gain1_mul_temp[31]) | (|Gain1_mul_temp[9:0]))});



  // CSD Encoding (32768) : 1000000000000000; Cost (Adders) = 0
  assign Gain14_1 = {Delay8_out1[15], {Delay8_out1, 15'b000000000000000}};
  assign Gain14_mul_temp =  - (Gain14_1);
  assign Gain14_out1 = Gain14_mul_temp[31:16] + $signed({1'b0, Gain14_mul_temp[15] & (( ~ Gain14_mul_temp[31]) | (|Gain14_mul_temp[14:0]))});



  assign Gain5_mul_temp = 16'sb1010101010101011 * Delay17_out1;
  assign Gain5_out1 = ({{2{Gain5_mul_temp[31]}}, Gain5_mul_temp[31:10]}) + $signed({1'b0, Gain5_mul_temp[9] & (( ~ Gain5_mul_temp[31]) | (|Gain5_mul_temp[8:0]))});



  assign Add8_add_cast = {{3{Gain14_out1[15]}}, {Gain14_out1, 6'b000000}};
  assign Add8_add_cast_1 = {Gain5_out1[23], Gain5_out1};
  assign Add8_out1 = Add8_add_cast + Add8_add_cast_1;



  assign Add7_add_cast = {{4{Delay9_out1[15]}}, {Delay9_out1, 6'b000000}};
  assign Add7_add_cast_1 = {Add8_out1[24], Add8_out1};
  assign Add7_out1 = Add7_add_cast + Add7_add_cast_1;



  assign Add6_add_cast = {{3{Gain1_out1[23]}}, Gain1_out1};
  assign Add6_add_cast_1 = {Add7_out1[25], Add7_out1};
  assign Add6_add_temp = Add6_add_cast + Add6_add_cast_1;
  assign Add6_out1 = Add6_add_temp[23:0];



  always @(posedge clk or posedge reset)
    begin : Delay5_process
      if (reset == 1'b1) begin
        Delay5_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay5_out1 <= Delay13_out1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : Delay6_process
      if (reset == 1'b1) begin
        Delay6_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay6_out1 <= Delay5_out1;
        end
      end
    end



  assign Gain4_cast = {{2{Delay6_out1[15]}}, {Delay6_out1, 14'b00000000000000}};
  assign Gain4_out1 = Gain4_cast[30:15] + $signed({1'b0, Gain4_cast[14] & (( ~ Gain4_cast[31]) | (|Gain4_cast[13:0]))});



  assign Gain2_cast = {{2{Delay13_out1[15]}}, {Delay13_out1, 14'b00000000000000}};
  assign Gain2_out1 = Gain2_cast[30:15] + $signed({1'b0, Gain2_cast[14] & (( ~ Gain2_cast[31]) | (|Gain2_cast[13:0]))});



  assign Add11_sub_cast = {Gain2_out1[15], Gain2_out1};
  assign Add11_sub_cast_1 = {Delay5_out1[15], Delay5_out1};
  assign Add11_out1 = Add11_sub_cast - Add11_sub_cast_1;



  assign Add10_add_cast = {{2{Gain4_out1[15]}}, Gain4_out1};
  assign Add10_add_cast_1 = {Add11_out1[16], Add11_out1};
  assign Add10_out1 = Add10_add_cast + Add10_add_cast_1;



  always @(posedge clk or posedge reset)
    begin : Delay2_process
      if (reset == 1'b1) begin
        Delay2_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay2_out1 <= Delay_out1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : Delay3_process
      if (reset == 1'b1) begin
        Delay3_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay3_out1 <= Delay2_out1;
        end
      end
    end



  assign Gain3_cast = {{2{Delay2_out1[15]}}, {Delay2_out1, 14'b00000000000000}};
  assign Gain3_out1 = Gain3_cast[30:15] + $signed({1'b0, Gain3_cast[14] & (( ~ Gain3_cast[31]) | (|Gain3_cast[13:0]))});



  always @(posedge clk or posedge reset)
    begin : Delay4_process
      if (reset == 1'b1) begin
        Delay4_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay4_out1 <= Delay3_out1;
        end
      end
    end



  assign Gain6_mul_temp = 16'sb0101010101010101 * Delay4_out1;
  assign Gain6_out1 = ({{3{Gain6_mul_temp[31]}}, Gain6_mul_temp[31:11]}) + $signed({1'b0, Gain6_mul_temp[10] & (( ~ Gain6_mul_temp[31]) | (|Gain6_mul_temp[9:0]))});



  // CSD Encoding (32768) : 1000000000000000; Cost (Adders) = 0
  assign Gain7_1 = {Delay3_out1[15], {Delay3_out1, 15'b000000000000000}};
  assign Gain7_mul_temp =  - (Gain7_1);
  assign Gain7_out1 = Gain7_mul_temp[31:16] + $signed({1'b0, Gain7_mul_temp[15] & (( ~ Gain7_mul_temp[31]) | (|Gain7_mul_temp[14:0]))});



  assign Gain_mul_temp = 16'sb1010101010101011 * Delay_out1;
  assign Gain_out1 = ({{3{Gain_mul_temp[31]}}, Gain_mul_temp[31:11]}) + $signed({1'b0, Gain_mul_temp[10] & (( ~ Gain_mul_temp[31]) | (|Gain_mul_temp[9:0]))});



  assign Add14_add_cast = {{3{Gain3_out1[15]}}, {Gain3_out1, 6'b000000}};
  assign Add14_add_cast_1 = {Gain_out1[23], Gain_out1};
  assign Add14_out1 = Add14_add_cast + Add14_add_cast_1;



  assign Add13_add_cast = {{4{Gain7_out1[15]}}, {Gain7_out1, 6'b000000}};
  assign Add13_add_cast_1 = {Add14_out1[24], Add14_out1};
  assign Add13_out1 = Add13_add_cast + Add13_add_cast_1;



  assign Add12_add_cast = {{3{Gain6_out1[23]}}, Gain6_out1};
  assign Add12_add_cast_1 = {Add13_out1[25], Add13_out1};
  assign Add12_add_temp = Add12_add_cast + Add12_add_cast_1;
  assign Add12_out1 = Add12_add_temp[23:0];



  always @(posedge clk or posedge reset)
    begin : Delay7_process
      if (reset == 1'b1) begin
        Delay7_out1 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          Delay7_out1 <= Add12_out1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : Delay14_process
      if (reset == 1'b1) begin
        Delay14_out1 <= 12'b000000000000;
      end
      else begin
        if (enb) begin
          Delay14_out1 <= In2;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : Delay12_process
      if (reset == 1'b1) begin
        Delay12_out1 <= 12'b000000000000;
      end
      else begin
        if (enb) begin
          Delay12_out1 <= Delay14_out1;
        end
      end
    end



  assign Product2_cast = {1'b0, Delay12_out1};
  assign Product2_mul_temp = Delay7_out1 * Product2_cast;
  assign Product2_cast_1 = Product2_mul_temp[35:0];
  assign Product2_out1 = Product2_cast_1[31:8] + $signed({1'b0, Product2_cast_1[7] & (( ~ Product2_cast_1[35]) | (|Product2_cast_1[6:0]))});



  assign Add5_add_cast = {Add10_out1[17], {Add10_out1, 6'b000000}};
  assign Add5_add_cast_1 = {Product2_out1[23], Product2_out1};
  assign Add5_add_temp = Add5_add_cast + Add5_add_cast_1;
  assign Add5_out1 = Add5_add_temp[23:0];



  always @(posedge clk or posedge reset)
    begin : Delay15_process
      if (reset == 1'b1) begin
        Delay15_out1 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          Delay15_out1 <= Add5_out1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : Delay16_process
      if (reset == 1'b1) begin
        Delay16_out1 <= 12'b000000000000;
      end
      else begin
        if (enb) begin
          Delay16_out1 <= Delay12_out1;
        end
      end
    end



  assign Product_cast = {1'b0, Delay16_out1};
  assign Product_mul_temp = Delay15_out1 * Product_cast;
  assign Product_cast_1 = Product_mul_temp[35:0];
  assign Product_out1 = Product_cast_1[31:8] + $signed({1'b0, Product_cast_1[7] & (( ~ Product_cast_1[35]) | (|Product_cast_1[6:0]))});



  assign Add4_out1 = Add6_out1 + Product_out1;



  always @(posedge clk or posedge reset)
    begin : Delay19_process
      if (reset == 1'b1) begin
        Delay19_out1 <= 24'sb000000000000000000000000;
      end
      else begin
        if (enb) begin
          Delay19_out1 <= Add4_out1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : Delay11_process
      if (reset == 1'b1) begin
        Delay11_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay11_out1 <= Delay20_out1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : Delay18_process
      if (reset == 1'b1) begin
        Delay18_out1 <= 12'b000000000000;
      end
      else begin
        if (enb) begin
          Delay18_out1 <= Delay16_out1;
        end
      end
    end



  assign Product1_cast = {1'b0, Delay18_out1};
  assign Product1_mul_temp = Delay19_out1 * Product1_cast;
  assign Product1_out1 = Product1_mul_temp[35:0];



  assign Add3_add_cast = {{7{Delay11_out1[15]}}, {Delay11_out1, 14'b00000000000000}};
  assign Add3_add_cast_1 = {Product1_out1[35], Product1_out1};
  assign Add3_add_temp = Add3_add_cast + Add3_add_cast_1;
  assign Add3_out1 = Add3_add_temp[29:14] + $signed({1'b0, Add3_add_temp[13] & (( ~ Add3_add_temp[36]) | (|Add3_add_temp[12:0]))});



  always @(posedge clk or posedge reset)
    begin : Delay1_process
      if (reset == 1'b1) begin
        Delay1_out1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          Delay1_out1 <= Add3_out1;
        end
      end
    end



  assign Out1 = Delay1_out1;

  assign ce_out = clk_enable;

endmodule  // Farrow_Canonic

