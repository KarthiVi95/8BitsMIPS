`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2019 03:49:19 PM
// Design Name: 
// Module Name: control_unit
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


module control_unit(
    input [2:0]op_code,
    output  reg reg_dst,
    output reg jump,
    output reg branch,
    output reg memread,
    output reg memtoreg,
    output reg ALUop,
    output reg memwrite,
    output reg ALUsrc,
    output reg regwrite
  ); 
//add

  always @ (op_code)
   begin 
 //add
        if (op_code == 3'b010) begin            
             reg_dst = 1'b1;
             jump = 1'b0;
             branch = 1'b0;
             memread = 1'b0;
             memtoreg = 1'b0;
             ALUop = 1'b1;
             memwrite = 1'b0;
             ALUsrc = 1'b0;
             regwrite = 1'b1;
        // sub
        end else if (op_code == 3'b100) begin
             reg_dst = 1'b1;
             jump = 1'b0;
             branch = 1'b0;
             memread = 1'b0;
             memtoreg = 1'b0;
             ALUop = 1'b0;
             memwrite = 1'b0;
             ALUsrc = 1'b0;
             regwrite = 1'b1;
        // jump
        end else if (op_code == 3'b101) begin
             reg_dst = 1'b0;
             jump = 1'b1;
             branch = 1'b0;
             memread = 1'b0;
             memtoreg = 1'b0;
             ALUop = 1'b0;
             memwrite = 1'b0;
             ALUsrc = 1'b0;
             regwrite = 1'b0;
        // sw
        end else if (op_code == 3'b001) begin
             reg_dst = 1'b0;
             jump = 1'b0;
             branch = 1'b0;
             memread = 1'b0;
             memtoreg = 1'b0;
             ALUop = 1'b1;
             memwrite = 1'b1;
             ALUsrc = 1'b1;
             regwrite = 1'b0; 
        //lw
        end else if (op_code == 3'b000) begin
             reg_dst = 1'b0;
             jump = 1'b0;
             branch = 1'b0;
             memread = 1'b1;
             memtoreg = 1'b1;
             ALUop = 1'b1;
             memwrite = 1'b0;
             ALUsrc = 1'b1;
             regwrite = 1'b1;

        // addi 
        end else begin
             reg_dst = 1'b1;
             jump = 1'b0;
             branch = 1'b0;
             memread = 1'b0;
             memtoreg = 1'b0;
             ALUop = 1'b1;
             memwrite = 1'b0;
             ALUsrc = 1'b1;
             regwrite = 1'b1;     
                 

        end 
       // $display(jump);
   end
endmodule