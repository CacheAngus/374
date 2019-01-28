module ALURotateR (
	input [31:0] input_a, input_b,
	output [31:0] sumALU,
	);
	
	reg [31:0] results;
	assign sumALU = results;
	
	
	always @(*)
	begin
		// Rotate right
           results = {input_a[0],input_a[7:1]};
          
	end
	
endmodule
		
		
	