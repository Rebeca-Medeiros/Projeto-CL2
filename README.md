CI SmartLift

O objetivo desse projeto é simular o funcionamento de um elevador utilizando o kit de desenvolvimento DE2-115. Para isso, será usado um display de 7 segmentos que simula a movimentação de um elevador. A Lógica de funcionamento do elevador obedece uma máquina de estados que possui três estados. Os   estado   são: 

1. Partida: Reseta o sistema e volta para o estado zero, andar 0 (terreo). 

2. Parado: Quando o elevador, em movimento, chega a algum andar solicitado, ele para. Até que outro andar seja solicitado ou o tempo, ele permanece parado no andar. Se um botão de andar é pressionado, a solicitação é registrada, e o elevador começa um movimento de subida ou de descida, em direção ao andar correspondente. 

3. Subindo e descendo: Quando o elevador está subindo ou descendo, o elevador só poderá executar uma solicitação por vez, logo, não poderá chamar outros andares, acima ou abaixo de sua localização imediata. Ele permanecerá em seu movimento de subida, até que o andar solicitado, em seguida ficará parado aguardando uma nova   solicitação.

As chaves SW0 até SW8 serão responsáveis pela seleção dos andares. O primeiro display de 7 segmentos mostrará o andar escolhido pelas chaves. O segundo display de 7 segmentos mostrará o movimento do elevador com os valores dos andares que ele esta passando. Além disso, deverá ser mostrado no display LCD os estados que a máquina de estados estiver executando.Obs: se quiser incrementar ainda mais o seu projeto utilize os LEDs para simular a abertura e fechamento da porta do elevador. 


Dispositivos utilizados: Chaves, LEDs, Displays de 7 Segmentos, LCD.   
