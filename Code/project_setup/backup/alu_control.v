`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2019 09:24:55 PM
// Design Name: 
// Module Name: alu_control
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


module alu_control(
    input [2:0] alu_control_ip,
    input [0:0] alu_op,
    output reg [2:0] alu_control_op
    );
    
    always@(alu_op) begin
    if (alu_op == 1'b0) begin            
           alu_control_op =  alu_control_ip;             
    end
    else begin
           alu_control_op = 3'b001;
    end 
    end
endmodule
