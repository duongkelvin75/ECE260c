// from FarrowFilters.ppt, Slide 18	diagram					  
// using disributive law to economize build
module farrow1(
  input                     clk,
  input                     reset,
  input                     enable,
  input              [ 9:0] mu,		 // 2.8 format
  input        signed[15:0] dat_i,
  output logic signed[15:0] dat_o);

// top row multipliers (treating all as positive coefs for now)
  logic signed[15:0] p61, p21, p31;  // declare products 
  assign p31 = dat_i / 3; 	         // divide dat_i by 3
  assign p61 = p31 >>> 1;		     // divide dat_i by 6
  assign p21 = dat_i >>> 1;	         // divide dat_i by 2

// top row registers / Dflip_flops
  logic signed[15:0] dat_iq1, p6q1, p2q1;   
  always_ff @(posedge clk) begin  // Q<=D for each DFF
  	p6q1    <= p61;
    p2q1    <= p21;
	dat_iq1 <= dat_i;
  end 

// top row adders
  logic signed[15:0] a61, a21, a31;
  assign a61 = p2q1 - p61;	       // see line 11 comment
  assign a21 = p21  - dat_iq1; 
  assign a31 = p2q1 - p31;		   // per line 11 comment

// second row registers
  logic signed[15:0] p6q2, p2q2, dat_iq2;
  always_ff @(posedge clk) begin
	p6q2    <= p6q1;
	p2q2    <= p2q1;
	dat_iq2 <= dat_iq1;
  end

// second row adders
  logic signed[15:0] a62, a22, a32;
  assign a62 = p2q2 + a61;         	// -1/6 negation already covered in line 26
  assign a22 = a21  - p2q2;
  assign a32 = dat_iq2 + a31;      // -1/3 negation covered in line 28
  
// third row register(s)
  logic signed[15:0] p6q3;
  always_ff @(posedge clk) 
    p6q3 <= p6q2;    

// third row adders
  logic signed[15:0] a63, a33;
  assign a63 = a62 - p6q3;			// line 10 again
  assign a33 = a32 - p6q3; 			// line 10 

// bottom row
  logic signed[15:0] p62, a23, p22, a34, p32, a44;
  assign p62 = (mu * a63)>>>8;
  assign a23 = p62 + a22;
  assign p22 = (mu * a23)>>>8;
  assign a34 = p22 + a33;
  assign p32 = (mu * a34)>>>8;
  assign a44 = p32 + dat_iq1; 

  assign dat_o = a44;//[23:8] + a44[7];  // biased 1/2 LSB round

endmodule