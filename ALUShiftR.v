module ALUShiftR (
	input [31:0] input_a, input_b,
	output [31:0] sumALU,
	);
	
	reg [31:0] results;
	assign sumALU = results;
	
	
	always @(*)
	begin
		
         // Logical shift right
           results = input_b>>1;
	end
	
endmodule
		
		
	