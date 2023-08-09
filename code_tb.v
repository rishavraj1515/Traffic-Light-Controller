module tf1_tb;
reg [1:0] state;	
reg reset;
wire [3:0] grn;
wire [3:0] ylw;	
wire [3:0] rd;	
wire [3:0] z;	
// Instantiate the Unit Under Test (UUT)	
Traffic_light uut (	.state(state),
 		.reset(reset), 	
		.grn(grn), 
		.ylw(ylw), 
		.rd(rd), 
		.z(z)
initial 
begin
    // Initialize Inputs
    state = 2'b00;
    reset = 1;
    #100; // Wait 100 ns 
    state = 2'b01;
    reset = 1; 
    #100; // Wait 100 ns 
    state = 2'b10;
    reset = 1; 
    #100; // Wait 100 ns 
    state = 2'b11;
    reset = 1;
    #100; // Wait 100 ns 
end     
endmodule
