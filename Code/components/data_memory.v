`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Karthik Vikram
// 
// Create Date: 04/11/2019 11:05:23 PM
// Design Name: 
// Module Name: data_memory
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


module data_memory(
     input memwrite,
     input memread,
     input[4:0] memory_write_data,
     input[4:0] memory_address,
     output reg [4:0] memory_read_data

    );
    integer i;
    reg [4:0] mem [31:0];
    initial begin  
           for(i=0;i<=31;i=i+1)  
                mem[i] <= 5'b00000;
      end
      
        
    always@(*) begin
    //memory_read_data = 8'b00000000;
    if (memwrite == 1'b1) begin
         mem[memory_address] <= memory_write_data ;
    end
    
    if (memread == 1'b1) begin
    //mem[11] = 8'b01001101;
    mem[11] = 5'b00110;
    memory_read_data = mem[memory_address];
    end
  // $display (memory_read_data,memread);
    end  
endmodule
