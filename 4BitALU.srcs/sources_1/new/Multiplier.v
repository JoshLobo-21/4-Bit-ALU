`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.04.2023 23:00:06
// Design Name: 
// Module Name: Multiplier
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


module Multiplier(input [3:0] A, [3:0] B, output [7:0] P);

wire [3:0] w1,w2,w3,w4;
wire [7:0] p1,p2,p3,p4;

assign w1 = {4{A[3]}};
assign p4 = (w1&B)<<3;

assign w2 = {4{A[2]}};
assign p1 = (w2&B)<<2;

assign w3 = {4{A[1]}};
assign p2 = (w3&B)<<1;

assign w4 = {4{A[0]}};
assign p3 = w4&B;

assign P = p4+p1+p2+p3;

endmodule
