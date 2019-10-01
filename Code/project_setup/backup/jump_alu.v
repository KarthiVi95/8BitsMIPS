`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2019 12:20:47 PM
// Design Name: 
// Module Name: jump_alu
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


module jump_alu(
    input [7:0] jump_in,
    input [7:0] pc_in,
    output [7:0] jump_out
    );
    
//    always @(jump_in,pc_in)
//    begin
    assign jump_out = {pc_in[7:5],jump_in[4:0]};
//    end
endmodule
