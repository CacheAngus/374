module reg32 ( InD, clr, clk, WR_EN, OutQ );
input [31:0] InD;
input clr, clk, WR_EN;
output [31:0] OutQ;

reg [31:0] out_nxt;

assign OutQ = out_nxt;

always@ (posedge clk)
begin
if (clr)
out_nxt <= 32'b0;
else
begin
	if (WR_EN == 1)
	begin
	out_nxt <= InD;
	end 
end 
end

endmodule