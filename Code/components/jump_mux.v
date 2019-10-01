`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Karthik Vikram
// 
// Create Date: 04/13/2019 12:51:02 PM
// Design Name: 
// Module Name: jump_mux
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

module jump_mux(

input [7:0] in0,
input [7:0] in1,
input select,
output reg [7:0] out
 );
always @(*)
    begin
        case(select)
        1'b1: 
           out = in1;
        1'b0: 
           out = in0;
        default: out = in0; 
        endcase
    end
endmodule


