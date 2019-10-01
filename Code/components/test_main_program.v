`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/10/2019 08:54:15 PM
// Design Name: 
// Module Name: test_main_program
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


module test_main_program(
);
    reg[7:0] pc_ip;
  //  reg reset1;
    wire [7:0] address_out1;
    wire [7:0] im_out1;
    wire reg_dst1;
    wire jump1;
    wire branch1;
    wire memread1;
    wire memtoreg1;
    wire ALUop1;
    wire memwrite1;
    wire ALUsrc1;
    wire regwrite1;
    wire [4:0] ReadData11;
    wire [4:0] ReadData21;
    wire [4:0] extend_out1;
    wire [4:0] alu_ip;
    wire [4:0] alu_out1;
    wire [4:0] writeregip;
    wire [4:0] memory_read_data1;
  //  wire [2:0] alu_control_op1;
    wire [7:0] jump_out1;
    wire [7:0] instr_ip;
    wire [7:0] next_address;
    
    mainp uut(pc_ip,
    address_out1,
    im_out1,
    reg_dst1,
    jump1,
    branch1,
    memread1,
    memtoreg1,
    ALUop1,
    memwrite1,
    ALUsrc1,
    regwrite1,
    ReadData11,
    ReadData21,
    extend_out1,
    alu_ip,
    alu_out1,
    writeregip,
    memory_read_data1,
   
    jump_out1,
    instr_ip,
    next_address
    );
    
    initial begin
//        reset1 =1;
       #15 pc_ip =  8'b00000000;
       #15 pc_ip =  8'b00000001;
       #15 pc_ip =  8'b00000010;
       #15 pc_ip =  8'b00000011;
       #15 pc_ip =  8'b00000100;
     //  #15 pc_ip =  8'b00000101;
 //      #15 pc_ip =  8'b00000110;
    //   #15 pc_ip =  8'b00000111;
      // #15 pc_ip =  8'b00000101;
//       #15 op_code=  3'b101;

end

endmodule
