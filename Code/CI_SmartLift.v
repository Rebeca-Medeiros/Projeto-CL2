module CI_SmartLift(/*clk, res,*/ sw, LED_RED, LED_GREEN, HEX0, HEX1,
					/*LCD_DATA, LCD_RW, LCD_EN, LCD_RS, LCD_ON, LCD_BLON*/);
	
	input [8:0]sw; //chaves responsáveis pela seleção dos andares
	output reg [3:0] LED_GREEN; //led verde para quando as portas estiverem abertas
	output reg [3:0] LED_RED; //led vermelho para quando as portas estiverem fechadas
	output [6:0] HEX0; //primeiro display, vai mostrar o andar escolhido pelas chaves
	output [6:0] HEX1; //segundo display, vai mostar o movimento do elevador
	integer i;
	integer j;
	integer k;
	
		
	reg andaratual;
	reg proximoandar;
	
	if(proximoandar > andaratual){
		for(j = andaratual; j < proximoandar; j + 1){
			//contador crescente para o movimento
		}
	else {
		for(k = andaratual; k > proximoandar; j + 1){
			//contador decrescente para o movimento
		}
	}
	
	always@(*) begin
		case(sw) begin
			1 : 
	





