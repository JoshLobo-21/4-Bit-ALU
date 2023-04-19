`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.04.2023 11:43:59
// Design Name: 
// Module Name: Div
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


module Div(input [3:0] N, M, output reg [3:0] Q, R);

wire [8:0] AQ;
reg A;
reg [8:0] temp;

assign AQ = {{5{1'b0}}, {N}};

always @*
if(AQ[8] == 0)
begin
assign temp = AQ<<1;
assign A = A - M;
end

else
begin
assign temp = AQ<<1;
assign A = A + M;
end

always @(AQ)
if(AQ[8] == 1'b0)
assign Q[0] = 1;
else
assign Q[0] = 0;


endmodule
