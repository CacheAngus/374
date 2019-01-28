module ALULogicalOr (
	input [31:0] input_a, input_b,
	output [31:0] sumALU,
	);
	
	reg [31:0] results;
	assign sumALU = results;
	
	
	always @(*)
	begin
		//  Logical or
           results = input_a | input_b;
          
	end
	
endmodule
		
		
	