module multiplexer32to1 ( In0, In1, In2, In3, In4, In5, In6, In7,
									In8, In9, In10, In11, In12, In13, 
									In14, In15, In16, In17, In18, In19,
									In20, In21, In22, In23, In24, In25,
									In26, In27, In28, In29, In30, In31,
									Sel0, Sel1, Sel2, Sel3, Sel4, 
									outMux
									);
	// bus inputs 
	input [31:0] In0;
	input [31:0] In1;
	input [31:0] In2;
	input [31:0] In3;
	input [31:0] In4;
	input [31:0] In5;
	input [31:0] In6;
	input [31:0] In7;
	input [31:0] In8;
	input [31:0] In9;
	input [31:0] In10;
	input [31:0] In11;
	input [31:0] In12;
	input [31:0] In13;
	input [31:0] In14;
	input [31:0] In15;
	input [31:0] In16;
	input [31:0] In17;
	input [31:0] In18;
	input [31:0] In19;
	input [31:0] In20;
	input [31:0] In21;
	input [31:0] In22;
	input [31:0] In23;
	input [31:0] In24;
	input [31:0] In25;
	input [31:0] In26;
	input [31:0] In27;
	input [31:0] In28;
	input [31:0] In29;
	input [31:0] In30;
	input [31:0] In31;
	// select inputs 
	input Sel0;
input	Sel1;
input Sel2;
input Sel3;
input Sel4;
	// bus output
	output [31:0] outMux;


// join sel values to get select 
wire [4:0] select;
assign select = {Sel4, Sel3, Sel2, Sel1, Sel0}; 
reg [31:0] busOut;

assign outMux = busOut;

always @ (select)
begin
	case (select)
	0 : busOut <= In0;
	1 : busOut <= In1;
	2 : busOut <= In2;
	3 : busOut <= In3;
	4 : busOut <= In4;
	5 : busOut <= In5;
	6 : busOut <= In6;
	7 : busOut <= In7;
	8 : busOut <= In8;
	9 : busOut <= In9;
	10 : busOut <= In10;
	11 : busOut <= In11;
	12 : busOut <= In12;
	13 : busOut <= In13;
	14 : busOut <= In14;
	15 : busOut <= In15;
	16 : busOut <= In16;
	17 : busOut <= In17;
	18 : busOut <= In18;
	19 : busOut <= In19;
	20 : busOut <= In20;
	21 : busOut <= In21;
	22 : busOut <= In22;
	23 : busOut <= In23;
	24 : busOut <= In24;
	25 : busOut <= In25;
	26 : busOut <= In26;
	27 : busOut <= In27;
	28 : busOut <= In28;
	29 : busOut <= In29;
	30 : busOut <= In30;
	31 : busOut <= In31;
	endcase
	

end 

endmodule