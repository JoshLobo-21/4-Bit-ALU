`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.02.2023 15:33:32
// Design Name: 
// Module Name: Rotate_test
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


module Rotate_test();
reg [3:0] A;
reg s0,s1;
wire [3:0] Y;
integer i;

Rotate uut(A,s0,s1,Y);

initial begin
s1 = 0;
s0 = 1;
for(i = 0; i<=15; i = i+1) begin
A = $urandom;
#5;
end

s1 = 1;
s0 = 1;
for(i = 0; i<=15; i = i+1) begin
A = $urandom;
#5;
end

s1 = 1;
s0 = 0;
for(i = 0; i<=15; i = i+1) begin
A = $urandom;
#5;
end

s1 = 0;
s0 = 0;
for(i = 0; i<=15; i = i+1) begin
A = $urandom;
#5;
end
end
endmodule
