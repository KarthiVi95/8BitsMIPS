`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Karthik Vikram
// 
// Create Date: 04/10/2019 05:22:20 PM
// Design Name: 
// Module Name: alu
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


module alu(
           input [4:0] regip,muxop,  // ALU 8-bit Inputs                 
           input  ALU_Sel,// ALU Selection
           output reg [4:0] ALU_Out // ALU 8-bit Output
    );
    reg [4:0] ALU_Result;
   // assign ALU_Out = ALU_Result; // ALU out
    always @(*)
    begin
        case(ALU_Sel)
        1'b1: // Addition
           ALU_Out = regip + muxop ; 
        1'b0: // Subtraction
           ALU_Out = regip - muxop ;
        default: ALU_Out = regip + muxop ; 
        endcase
    end

endmodule