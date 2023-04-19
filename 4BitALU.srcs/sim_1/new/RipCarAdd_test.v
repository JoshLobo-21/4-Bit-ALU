`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2023 17:01:49
// Design Name: 
// Module Name: RipCarAdd_test
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

module RipCarAdd_test();
reg [3:0] A,B;
reg cin;
wire [3:0] S;
wire C;
integer i;

RipCarAdd uut(A,B,cin,S,C);

initial begin

for(cin = 0; cin<=1; cin = cin+1)begin
for(i = 0; i<=15; i = i+1) begin
A = $urandom;
B = $urandom;
#10;
end
end
end

endmodule
