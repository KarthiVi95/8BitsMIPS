`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Karthik Vikram
// 
// Create Date: 04/10/2019 08:09:00 PM
// Design Name: 
// Module Name: test_main
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

module mainp(
    input [7:0] pc_ip,
//    input reset1,
    output [7:0] address_out1,
    output [7:0] im_out1,
    output reg_dst1,
    output jump1,
    output branch1,
    output memread1,
    output memtoreg1,
    output ALUop1,
    output memwrite1,
    output ALUsrc1,
    output regwrite1,
    output [4:0] ReadData11,
    output [4:0] ReadData21,
    output [4:0] extend_out1,
    output [4:0] alu_ip,
    output [4:0] alu_out1,
    output [4:0] writeregip,
    output [4:0] memory_read_data1,
   // output [2:0] alu_control_op1,
    output [7:0] jump_out1,
    output [7:0] instr_ip,
    output [7:0] next_address
    //output [7:0] adder_ip
    );
     
//     wire[7:0] extend_out1,alu_ip;
//   always @(*); 
//    begin
    
//    assign pc_ip = 8'b00000000;
    program_counter pc(.pc_ip(pc_ip),.instr_ip(instr_ip));
    instruction_memory im (.pc_op(instr_ip),.im_out(im_out1));
    //always@(*)
    //begin
    //$display("Look Here !");
    //$display(im_out1[7:0]);
    //end
    control_unit cm(.op_code(im_out1[7:5]),.reg_dst(reg_dst1),.jump(jump1),.branch(branch1),.memread(memread1),.memtoreg(memtoreg1),.ALUop(ALUop1),.memwrite(memwrite1),.ALUsrc(ALUsrc1),.regwrite(regwrite1));
    adder_pc pc1(.address_in(instr_ip),.address_out(address_out1));
    RegisterFile rf(.pro_ip(pc_ip),.ReadRegister(im_out1[4:4]),.WriteRegister(im_out1[3:3]),.WriteData(writeregip),.RegWrite(regwrite1),.ReadData1(ReadData11),.ReadData2(ReadData21));
    sign_extend se(.extend_ip(im_out1[2:0]),.extend_out(extend_out1));
   // alu_control ac(.alu_control_ip(im_out1[2:0]),.alu_op(ALUop1),.alu_control_op(alu_control_op1));
    mux_alu ma(.in0(ReadData21),.in1(extend_out1),.select(ALUsrc1),.out(alu_ip));
    alu a(.regip(ReadData11),.muxop(alu_ip),.ALU_Sel(ALUop1),.ALU_Out(alu_out1));
    data_memory dm(.memwrite(memwrite1),.memread(memread1),.memory_write_data(ReadData21),.memory_address(alu_out1),.memory_read_data(memory_read_data1));
    mux2to1_data_memory mdm(.in0(alu_out1) , .in1(memory_read_data1), .select(memtoreg1), .out(writeregip));
    jump_alu j1(.jump_in(extend_out1),.pc_in(address_out1),.jump_out(jump_out1));
//    always@(*)
//    begin
//   // $display(jump1);
//    end
    jump_mux jm1(.in0(address_out1),.in1(jump_out1),.select(jump1),.out(next_address));
//    end
endmodule
