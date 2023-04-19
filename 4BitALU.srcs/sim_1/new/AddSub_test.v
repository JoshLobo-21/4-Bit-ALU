`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2023 23:42:08
// Design Name: 
// Module Name: AddSub_test
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


module AddSub_test();
reg [3:0] A,B;
reg [3:0] s1,s2;
wire [3:0] S;
wire C;
integer i;

AddSub uut(A,B,s1,s2,S,C);
initial 
begin
s1 = 4'b1111;
s2 = 4'b1111;
for(i = 0; i<=15; i = i+1) begin
A = $urandom;
B = $urandom;
#10;
end

s1 = 4'b1111;
s2 = 4'b0000;
for(i = 0; i<=15; i = i+1) begin
A = $urandom;
B = $urandom;
#10;
end

s1 = 4'b0000;
s2 = 4'b0000;
for(i = 0; i<=15; i = i+1) begin
A = $urandom;
B = $urandom;
#10;
end
end
endmodule
