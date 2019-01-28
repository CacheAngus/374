// 35 - 5 bit encoder, used in the multidirectional bus
module encoder32to5( In0, In1, In2, In3, In4, In5, In6, In7,
									In8, In9, In10, In11, In12, In13, 
									In14, In15, In16, In17, In18, In19,
									In20, In21, In22, In23, In24, In25,
									In26, In27, In28, In29, In30, In31,
									Out0, Out1, Out2, Out3, Out4);
// input ports 
	input In0;
	input In1;
	input In2;
	input In3;
	input In4;
	input In5;
	input In6;
	input In7;
	input In8;
	input In9;
	input In10;
	input In11;
	input In12;
	input In13;
	input In14;
	input In15;
	input In16;
	input In17;
	input In18;
	input In19;
	input In20;
	input In21;
	input In22;
	input In23;
	input In24;
	input In25;
	input In26;
	input In27;
	input In28;
	input In29;
	input In30;
	input In31;
// output ports
output Out0, Out1, Out2, Out3, Out4;

// Internal Variables 
reg [4:0] binOut; 

// join all ins to get 31:0
wire [31:0] encoderIn;
assign encoderIn = {In31, In30, In29, In28, In27, In26,
							In25, In24, In23, In22, In21, In20, 
							In19, In18, In17, In16, In15, In14,
							In13, In12, In11, In10, In9, In8, 
							In7, In6, In5, In4, In3, In2, In1,
							In0}; 


assign Out0 = binOut[0];
assign Out1 = binOut[1];
assign Out2 = binOut[2];
assign Out3 = binOut[3];
assign Out4 = binOut[4];

// start 
always @ (encoderIn)
begin
binOut = 0; 
case (encoderIn) 
32'h0002 : binOut = 1; 
32'h0004 : binOut = 2; 
32'h0008 : binOut = 3; 
32'h0010 : binOut = 4;
32'h0020 : binOut = 5; 
32'h0040 : binOut = 6; 
32'h0080 : binOut = 7; 
32'h0100 : binOut = 8;
32'h0200 : binOut = 9;
32'h0400 : binOut = 10; 
32'h0800 : binOut = 11; 
32'h1000 : binOut = 12; 
32'h2000 : binOut = 13; 
32'h4000 : binOut = 14; 
32'h8000 : binOut = 15; 
32'h10000 : binOut = 16; 
32'h20000 : binOut = 17; 
32'h40000 : binOut = 18; 
32'h80000 : binOut = 19;
32'h100000 : binOut = 20; 
32'h200000 : binOut = 21; 
32'h400000 : binOut = 22; 
32'h800000 : binOut = 23;
32'h1000000 : binOut = 24;
32'h2000000 : binOut = 25; 
32'h4000000 : binOut = 26; 
32'h8000000 : binOut = 27; 
32'h10000000 : binOut = 28; 
32'h20000000 : binOut = 29; 
32'h40000000 : binOut = 30; 
32'h80000000 : binOut = 31; 
endcase

/*Out0 = binOut[0];
Out1 = binOut[1];
Out2 = binOut[2];
Out3 = binOut[3];
Out4 = binOut[4];*/


end

endmodule