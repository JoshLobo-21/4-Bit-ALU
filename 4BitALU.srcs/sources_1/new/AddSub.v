`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2023 15:56:53
// Design Name: 
// Module Name: AddSub
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

module AddSub(A,B,s1,s2,S,C);

input [3:0] A,B;
input [3:0] s1,s2;
output [3:0] S;
output C;

wire [3:0] a,b,c;

assign a = A&s1;
assign b = B^s2;
assign c = b&s1;

assign d = &s2;

RipCarAdd R(a,c,d,S,C);

endmodule


