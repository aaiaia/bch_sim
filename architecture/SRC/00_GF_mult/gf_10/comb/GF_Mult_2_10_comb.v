//`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:56 06/01/2011 
// Design Name: 
// Module Name:    GF 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`ifndef GF_MULT_2_10_COMB
`define GF_MULT_2_10_COMB
module GF_Mult_2_10_comb(out,a,b);

input [9:0] a;
input [9:0] b;
output [9:0] out;
reg [9:0] out; 
	 
	  
	always @(*)
	begin
	
	out[0] <= (a[0]&b[0]) ^ (a[9]&b[1]) ^ (a[8]&b[2]) ^ (a[7]&b[3]) ^ (a[6]&b[4]) ^ (a[5]&b[5]) ^ 
	    			(a[4]&b[6]) ^ (a[3]&b[7]) ^ ((a[2]^a[9])&b[8]) ^ ((a[1]^a[8])&b[9]);
					
	out[1] <= (a[1]&b[0]) ^ (a[0]&b[1]) ^ (a[9]&b[2]) ^ (a[8]&b[3]) ^ (a[7]&b[4]) ^ (a[6]&b[5]) ^
		   		(a[5]&b[6]) ^ (a[4]&b[7]) ^ (a[3]&b[8]) ^ ((a[2]^a[9])&b[9]);
	
	out[2] <= (a[2]&b[0]) ^ (a[1]&b[1]) ^ (a[0]&b[2]) ^ (a[9]&b[3]) ^ (a[8]&b[4]) ^ (a[7]&b[5]) ^
			   	(a[6]&b[6]) ^ (a[5]&b[7]) ^ (a[4]&b[8]) ^ (a[3]&b[9]);
	
	out[3] <= (a[3]&b[0]) ^ ((a[2]^a[9])&b[1]) ^ ((a[1]^a[8])&b[2]) ^ ((a[0]^a[7])&b[3]) ^ ((a[6]^a[9])&b[4]) ^
				   ((a[8]^a[5])&b[5]) ^ ((a[7]^a[4])&b[6]) ^ ((a[6]^a[3])&b[7]) ^ ((a[5]^a[2]^a[9])&b[8]) ^ ((a[4]^a[1]^a[8])&b[9]);
	
	out[4] <= (a[4]&b[0]) ^ (a[3]&b[1]) ^ ((a[2]^a[9])&b[2]) ^ ((a[1]^a[8])&b[3]) ^ ((a[0]^a[7])&b[4]) ^ ((a[6]^a[9])&b[5]) ^
			   	((a[8]^a[5])&b[6]) ^ ((a[7]^a[4])&b[7]) ^ ((a[6]^a[3])&b[8]) ^ ((a[5]^a[2]^a[9])&b[9]);
	
	out[5] <= (a[5]&b[0]) ^ (a[4]&b[1]) ^ (a[3]&b[2]) ^ ((a[2]^a[9])&b[3]) ^ ((a[1]^a[8])&b[4]) ^ ((a[0]^a[7])&b[5]) ^ ((a[6]^a[9])&b[6]) ^ 
			   	((a[8]^a[5])&b[7]) ^ ((a[7]^a[4])&b[8]) ^ ((a[6]^a[3])&b[9]);
	
	out[6] <= (a[6]&b[0]) ^ (a[5]&b[1]) ^ (a[4]&b[2]) ^ (a[3]&b[3]) ^ ((a[2]^a[9])&b[4]) ^ ((a[1]^a[8])&b[5]) ^ ((a[0]^a[7])&b[6]) ^
				   ((a[6]^a[9])&b[7]) ^ ((a[8]^a[5])&b[8]) ^ ((a[7]^a[4])&b[9]); 
		
	out[7] <= (a[7]&b[0]) ^ (a[6]&b[1]) ^ (a[5]&b[2]) ^ (a[4]&b[3]) ^ (a[3]&b[4]) ^ ((a[2]^a[9])&b[5]) ^ ((a[1]^a[8])&b[6]) ^
		   	((a[0]^a[7])&b[7]) ^ ((a[6]^a[9])&b[8]) ^ ((a[8]^a[5])&b[9]);
		
	out[8] <= (a[8]&b[0]) ^ (a[7]&b[1]) ^ (a[6]&b[2]) ^ (a[5]&b[3]) ^ (a[4]&b[4]) ^ (a[3]&b[5]) ^ ((a[2]^a[9])&b[6]) ^ 
	            ((a[1]^a[8])&b[7]) ^  ((a[0]^a[7])&b[8]) ^ ((a[6]^a[9])&b[9]);
	
	out[9] <= (a[9]&b[0]) ^ (a[8]&b[1]) ^ (a[7]&b[2]) ^ (a[6]&b[3]) ^ (a[5]&b[4]) ^ (a[4]&b[5]) ^ (a[3]&b[6]) ^
			   	((a[2]^a[9])&b[7]) ^ ((a[1]^a[8])&b[8]) ^ ((a[0]^a[7])&b[9]);
	end
endmodule
`endif
