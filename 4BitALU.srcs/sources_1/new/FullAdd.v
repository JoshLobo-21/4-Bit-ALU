`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.02.2023 16:30:49
// Design Name: 
// Module Name: FullAdd
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

module FullAdd(input a,b,cin, output s,cout);

wire w1,w2,w3,w4;

xor(w1,a,b);
xor(s,w1,cin);

and(w3,w1,cin);
and(w4,a,b);
or(cout,w3,w4);

endmodule
