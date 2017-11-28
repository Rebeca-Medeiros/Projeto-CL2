module smartlift(SW, LED_G, LED_R, HEX0, HEX1, KEY0, CLOCK_50);
	
	input [8:0]SW; 		//andar selecionado
	input KEY0; 			//solicitar o andar
	input CLOCK_50;		
	output reg LED_G;	//porta aberta
	output reg LED_R;	//porta fechada
	output reg[6:0]HEX0 = ~7'h06;	//print andar selecionado
	output reg[6:0]HEX1 = ~7'h06;	//andar atual
	
	//seg - (a, b, c, d, e, f, g)
	//seg - 1 desligado e 0 ligado
	
	integer movimento; // 0 - parado, 1 - subindo, 2 - descendo 
	integer s; //andar solicitado
	reg [1:0] estado_atual, estado_anterior;
	parameter andar0 = 0, andar1 = 1, andar2 = 2, andar3 = 3, andar4 = 4, andar5 = 5, andar6 = 6, andar7 = 7, andar8 = 8;
	
	/*
	reg clk;
	
	initial clk = 0;
	
	always #1 clk=~clk;	
	*/
	
	always @( negedge KEY0 ) begin 
		case (SW) 	
						9'b000000001: begin
							HEX0 = 7'b1000000; //se o andar selecionado for 0
							s = 0;
						end	
						
						9'b000000010: begin
							HEX0 = 7'b1111001; //se o andar selecionado for 1
							s = 1;
						end
						
						9'b000000100: begin
							HEX0 = 7'b0100100; //se o andar selecionado for 2
							s = 2;
						end
						
						9'b000001000: begin
							HEX0 = 7'b0110000; //se o andar selecionado for 3
							s = 3;
						end	
						
						9'b000010000: begin
							HEX0 = 7'b0011001; //se o andar selecionado for 4
							s = 4;
						end
						
						9'b000100000: begin
							HEX0 = 7'b0010010; //se o andar selecionado for 5
							s = 5;
						end
						
						9'b001000000: begin
							HEX0 = 7'b0000010; //se o andar selecionado for 6
							s = 6;
						end
						
						9'b010000000: begin 
							HEX0 = 7'b1111000; //se o andar selecionado for 7
							s = 7;
						end
						
						9'b100000000: begin 
							HEX0 = 7'b0000000; //se o andar selecionado for 8                                                                                                                                                                                                              1; //se o andar selecionado for 8
							s = 8;
						end
						
						default: begin 
							HEX0 = 7'b1110111;  //default: _ , nenhuma andar solicitado
						end 
			endcase
	end


	always @ (*) begin //parte combinacional 	
		case (estado_atual)
			andar0: begin
				HEX1 = 7'b1000000; //andar atual = 0
			end
			
			andar1: begin 
				HEX1 = 7'b1111001; //andar atual = 1
			end
			
			andar2: begin 
				HEX1 = 7'b0100100; //andar atual = 2
			end
			
			andar3: begin 
				HEX1 = 7'b0110000; //andar atual = 3
			end
			
			andar4: begin 
				HEX1 = 7'b0011001; //andar atual = 4
			end
			
			andar5: begin 
				HEX1 = 7'b0010010; //andar atual = 5
			end
			
			andar6: begin 
				HEX1 = 7'b0000010; //andar atual = 6
			end
			
			andar7: begin 
				HEX1 = 7'b1111000; //andar atual = 7
			end
			
			andar8: begin 
				HEX1 = 7'b00000000; //andar atual = 8
			end
		endcase
	end
	
	always @( posedge CLOCK_50 ) begin //parte sequencial 
		
		case (estado_atual) 
			
			andar0: begin
				if ( s > 0 ) begin
					estado_atual <= andar1;
					estado_anterior <= andar0; 
				end
			end
			
			andar1: begin
				if ( s > 1 ) begin
					estado_atual <= andar2;
					estado_anterior <= andar1; 
				end
				if ( s < 1 ) begin
					estado_atual <= andar0;
					estado_anterior <= andar1;
				end	
			end
			
			andar2: begin
				if ( s > 2 ) begin
					estado_atual <= andar3;
					estado_anterior <= andar2; 
				end
				if ( s < 2 ) begin
					estado_atual <= andar1;
					estado_anterior <= andar2;
				end
			end
			
			andar3: begin
				if ( s > 3 ) begin
					estado_atual <= andar4;
					estado_anterior <= andar3; 
				end
				if ( s < 3 ) begin
					estado_atual <= andar2;
					estado_anterior <= andar3;
				end
			end
			
			andar4: begin
				if ( s > 4 ) begin
					estado_atual <= andar5;
					estado_anterior <= andar4; 
				end
				if ( s < 4 ) begin
					estado_atual <= andar3;
					estado_anterior <= andar4;
				end
			end
			
			andar5: begin
				if ( s > 5 ) begin
					estado_atual <= andar6;
					estado_anterior <= andar5; 
				end
				if ( s < 5 ) begin
					estado_atual <= andar4;
					estado_anterior <= andar5;
				end
			end
			
			andar6: begin
				if ( s > 6 ) begin
					estado_atual <= andar7;
					estado_anterior <= andar6; 
				end
				if ( s < 6 ) begin
					estado_atual <= andar5;
					estado_anterior <= andar6;
				end
			end
			
			andar7: begin
				if ( s > 7 ) begin
					estado_atual <= andar8;
					estado_anterior <= andar7; 
				end
				if ( s < 7 ) begin
					estado_atual <= andar6;
					estado_anterior <= andar7;
				end
			end
			
			andar8: begin
				if ( s < 8 ) begin
					estado_atual <= andar7;
					estado_anterior <= andar8; 
				end
				if ( s < 8 ) begin
					estado_atual <= andar7;
					estado_anterior <= andar8;
				end
			end
			
			endcase

	end				
	
endmodule
				
					
				
		
