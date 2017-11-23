module SmartLift(SW, LED_G, LED_R, HX0, HX1 /*clock, reset*/ )
	input [8:0]SW;
	output reg LED_G;
	output reg LED_R;
	output reg [6:0]HX0;
	output reg [6:0]HX1;
	
	reg count;
	
	assign HX0 = ( SW[8:0] == 9'b000000000)? 7'b0111111:// 0
				 ( SW[8:0] == 9'b000000001)? 7'b0000110:// 1
		         ( SW[8:0] == 9'b000000010)? 7'b1011011:// 2
		         ( SW[8:0] == 9'b000000100)? 7'b0101111:// 3
		         ( SW[8:0] == 9'b000001000)? 7'b1100110:// 4
		         ( SW[8:0] == 9'b000010000)? 7'b1101101:// 5
		         ( SW[8:0] == 9'b000100000)? 7'b1111100:// 6
		         ( SW[8:0] == 9'b001000000)? 7'b0000111:// 7
		         ( SW[8:0] == 9'b010000000)? 7'b1111111:// 8
		         :7b'0000000
		         ;
		   
	assign HX1 = ( count == 9'b000000000) ? 7'b0111111:// 0
				 ( count == 9'b000000001)? 7'b0000110:// 1
		         ( count == 9'b000000010)? 7'b1011011:// 2
		         ( count == 9'b000000100)? 7'b0101111:// 3
		         ( count == 9'b000001000)? 7'b1100110:// 4
		         ( count == 9'b000010000)? 7'b1101101:// 5
		         ( count == 9'b000100000)? 7'b1111100:// 6
		         ( count == 9'b001000000)? 7'b0000111:// 7
		         ( count == 9'b010000000)? 7'b1111111:// 8
				 :7b'00000000;
	
	
	
	always @(*)begin
		case(SW[8:0])
			
				9'b000000000: begin
				count <= 9'b000000000;
				LED_G[0] = 1'b1;
				LED_G[1] = 1'b1;		
				LED_G[2] = 1'b1;
				LED_G[3] = 1'b1;
				LED_R[4] = 1'b0;
				LED_R[5] = 1'b0;
				LED_R[6] = 1'b0;
				LED_R[7] = 1'b0;
				end
				
				9'b000000001: begin
				count <= 9'b000000001;
				LED_G[0] = 1'b0;
				LED_G[1] = 1'b0;		
				LED_G[2] = 1'b0;
				LED_G[3] = 1'b1;
				LED_R[4] = 1'b1;
				LED_R[5] = 1'b1;
				LED_R[6] = 1'b1;
				LED_R[7] = 1'b1;
				end
				
				9'b000000010: begin
				count <= 9'b000000010;
				LED_G[0] = 1'b0;
				LED_G[1] = 1'b0;		
				LED_G[2] = 1'b0;
				LED_G[3] = 1'b1;
				LED_R[4] = 1'b1;
				LED_R[5] = 1'b1;
				LED_R[6] = 1'b1;
				LED_R[7] = 1'b1;
				end
				
				
				9'b000000011: begin
				count <= 9'b000000100;
				LED_G[0] = 1'b0;
				LED_G[1] = 1'b0;		
				LED_G[2] = 1'b0;
				LED_G[3] = 1'b1;
				LED_R[4] = 1'b1;
				LED_R[5] = 1'b1;
				LED_R[6] = 1'b1;
				LED_R[7] = 1'b1;
				end
				
				9'b000000100: begin
				count <= 9'b000001000;
				LED_G[0] = 1'b0;
				LED_G[1] = 1'b0;		
				LED_G[2] = 1'b0;
				LED_G[3] = 1'b1;
				LED_R[4] = 1'b1;
				LED_R[5] = 1'b1;
				LED_R[6] = 1'b1;
				LED_R[7] = 1'b1;
				end
				
				9'b000000101: begin
				count <= 9'b000010000;
				LED_G[0] = 1'b0;
				LED_G[1] = 1'b0;		
				LED_G[2] = 1'b0;
				LED_G[3] = 1'b1;
				LED_R[4] = 1'b1;
				LED_R[5] = 1'b1;
				LED_R[6] = 1'b1;
				LED_R[7] = 1'b1;
				end
				
				9'b000000110: begin
				count <= 9'b000010000;
				LED_G[0] = 1'b0;
				LED_G[1] = 1'b0;		
				LED_G[2] = 1'b0;
				LED_G[3] = 1'b1;
				LED_R[4] = 1'b1;
				LED_R[5] = 1'b1;
				LED_R[6] = 1'b1;
				LED_R[7] = 1'b1;
				end
				
				9'b000001000: begin
				count <= 9'b000100000;
				LED_G[0] = 1'b0;
				LED_G[1] = 1'b0;		
				LED_G[2] = 1'b0;
				LED_G[3] = 1'b1;
				LED_R[4] = 1'b1;
				LED_R[5] = 1'b1;
				LED_R[6] = 1'b1;
				LED_R[7] = 1'b1;
				end
				
				
				9'b000001000: begin
				count <= 9'b010000000;
				LED_G[0] = 1'b0;
				LED_G[1] = 1'b0;		
				LED_G[2] = 1'b0;
				LED_G[3] = 1'b1;
				LED_R[4] = 1'b1;
				LED_R[5] = 1'b1;
				LED_R[6] = 1'b1;
				LED_R[7] = 1'b1;
				end
				
				
				
				endcase
				
				
			
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
					
				
				