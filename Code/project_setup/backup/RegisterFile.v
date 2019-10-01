`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2019 02:12:27 PM
// Design Name: 
// Module Name: registerfile
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

module RegisterFile(
    input pro_ip,
	input ReadRegister,
	input WriteRegister,
	input [4:0] WriteData,
	input RegWrite,
	
	output reg [4:0] ReadData1,
	output reg [4:0] ReadData2
	
	);
	reg [4:0] Registers [0:1];
	
	initial begin
		Registers[0] = 5'b00111 ; // 10
		Registers[1] = 5'b00101 ; // 5
	end
	
	
	always @( WriteData)
	begin
		
		if (RegWrite == 1) 
		begin
			Registers[WriteRegister] <= WriteData;
		end
	end
	
		always @(ReadRegister or pro_ip)
		begin
		ReadData1 = Registers[WriteRegister];
        ReadData2 = Registers[ReadRegister];
	 
//		$display ("inside register file");
//		$display (ReadRegister,WriteRegister);
	   end
	
endmodule