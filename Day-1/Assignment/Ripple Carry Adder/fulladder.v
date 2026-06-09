`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 11:52:52
// Design Name: 
// Module Name: fulladder
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


module fulladder1bit(
input a,
input b,
input cin,
output sum,
output cout
);
wire w1,w2,w3;
xor(w1,a,b);
and(w3,a,b);
xor(sum,w1,cin);
and(w2,w1,cin);
or(cout,w2,w3);
endmodule
