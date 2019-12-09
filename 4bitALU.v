module alu ( 
   input [1:0] mode,
	input [3:0] A,B,
	input clk, 
	output [4:0] outp,
	output [1:0] outm,
	output [3:0] outa,outb
	);
	
	//Registers
	reg [4:0] out;

	//LED assignments
	assign outm = mode;
	assign outa = A;
	assign outb = B;
   assign outp = out; 
	assign outp [3:0] = out;

	//Logic
	always @(posedge clk)
		begin 
			case(mode)
				2'b00: out <= A+B;
				2'b01: out <= A<<1;
				2'b10: out <= A+B+1;
				2'b11:out <= (A<<1)+1;
				default: out <= A+B; 
			endcase
		end
endmodule