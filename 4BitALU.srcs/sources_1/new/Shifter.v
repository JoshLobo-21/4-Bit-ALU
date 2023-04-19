`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2023 21:39:19
// Design Name: 
// Module Name: Shifter
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


module Shifter(input [3:0] A, input s0,s1, output [3:0] Y);

wire w1,w2,w3,w0;
wire [3:0] w4;

Rotate R(A,s0,s1,w4);
decode24_low D(s0,s1,w0,w1,w2,w3);

and a(Y[0],w0,w4[0]);
and b(Y[1],w1,w4[1]);
and c(Y[2],w2,w4[2]);
and d(Y[3],w3,w4[3]);

endmodule
