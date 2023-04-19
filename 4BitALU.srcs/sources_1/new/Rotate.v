`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2023 15:06:17
// Design Name: 
// Module Name: Rotate
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


module Rotate(input [3:0] A, input s0,s1, output [3:0] Y);

wire a,b,c,d;

assign a = A[0];
assign b = A[1];
assign c = A[2];
assign d = A[3];

/*
s0s1
00 = No rotate
01 = Right Rotate 1 or Left Rotate 3
10 = Right Rotate 2 or Left Rotate 2
11 = Right Rotate 3 or Left Rotate 1
*/

Mux4 A1(a,b,c,d,s0,s1,Y[0]);
Mux4 B1(b,c,d,a,s0,s1,Y[1]);
Mux4 C1(c,d,a,b,s0,s1,Y[2]);
Mux4 D1(d,a,b,c,s0,s1,Y[3]);

endmodule
