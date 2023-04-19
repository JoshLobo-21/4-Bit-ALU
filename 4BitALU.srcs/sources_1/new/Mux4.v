`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2023 15:11:44
// Design Name: 
// Module Name: Mux4
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


module Mux4(input a,b,c,d,s0,s1, output Y);

not g1(s0_bar,s0);
not g2(s1_bar,s1);

wire w1,w2,w3,w4;

and A(w1,s1_bar,s0_bar,a);
and B(w2,s1_bar,s0,b);
and C(w3,s1,s0_bar,c);
and D(w4,s1,s0,d);

or mux(Y,w1,w2,w3,w4);

endmodule
