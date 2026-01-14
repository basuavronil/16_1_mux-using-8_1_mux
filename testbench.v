`timescale 1ns / 1ps
module tb_16_1_mux( );
 reg [15:0] I;
 reg [3:0] sel;
 wire y;
 integer i;
 
 //Instansciating the module
 mux_16_1 dut(.I(I), .sel(sel), .y(y));
 
 initial begin
 $monitor ("%0t | I = %0b | sel = %0b | y = %0b", $time, I, sel, y);
 I = 16'b0000000000000001;
 for (i=0; i<16; i = i + 1)
 begin
 sel = i;
 #5;
 I = I << 1;
 end
 $finish;
 end
endmodule
