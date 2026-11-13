`timescale 1ns/1ps
module clkg_uf;
reg clk;
real freq,tp;
initial  begin 
$value$plusargs("freq=%f",freq); //taking frequency as input from user
tp =(1000/freq); //tp in ns
 clk =0;
 forever #(tp/2) clk=~clk;
 end
 initial begin
 #500;
 $finish;
 end
 endmodule
