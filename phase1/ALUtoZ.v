module ALUtoZ(in, outHi, outLo, control);
input [63:0] in;
output [31:0] outHi;
output [31:0] outLo;


//idk how many select control values there are but i think there is only 1
reg [63:0] muxOut;

assign outHi = muxOut[31:0];
assign outLo = muxOut[63:32];

always @ (control)
begin 
	
	 muxOut <= in;
	
end

endmodulecd Docume