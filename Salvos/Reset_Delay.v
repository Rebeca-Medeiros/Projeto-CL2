//------------------------------------//
//       CIRCUITOS LÃ“GICOS 2          //
//        AULA PRÃTICA: LCD           //
//            EXEMPLO 02              //
//                                    //
//          EUDISLEY ANJOS            //
//       CENTRO DE INFORMÃTICA        //
//  UNIVERSIDADE FEDERAL DA PARAÃBA   //
//------------------------------------//

module Reset_Delay( input iCLK, output reg oRESET);
reg    [19:0]    Cont;

always@(posedge iCLK)
begin
    if(Cont!=20'hFFFFF)
    begin
        Cont    <=    Cont + 1'b1;
        oRESET    <=    1'b0;
    end
    else
    oRESET    <=    1'b1;
end

endmodule
