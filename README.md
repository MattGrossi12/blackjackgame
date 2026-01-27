# blackjackgame

O projeto é parte integrante da entrega semestral, meu objetivo primário é desenvolver um gerador de números aleatórios, sintetiza-lo através das ferramentas cadence, verifica-lo em UVM em systemverilog, e ao findar testa-lo em bancada utilizando meu FPGA Basys2 Spartan3E.

Como funciona o jogo blackjack?

No Blackjack, todos jogam contra o dealer. Os jogadores (nesse projeto, serão 2) recebem todas as cartas viradas para cima, e a primeira carta do dealer também fica virada para cima, enquanto a segunda fica virada para baixo. O objetivo do jogo é chegar o mais perto possível de 21 do que o dealer, sem ultrapassar esse valor. Se uma mão ultrapassar 21, é chamada de "estouro" ou "quebra", e a aposta é perdida. No Blackjack, Valetes, Damas, Reis e 10 valem 10. Um Ás pode valer 1 ou 11. Todas as outras cartas são jogadas com seu valor nominal.

O primeiro objetivo será implementar o gerador de números aleatórios customiza--do para esse projeto.

Um baralho padrão tem 52 cartas, divididas em 4 naipes (copas, ouros, paus e espadas) com 13 cartas cada (Ás, 2-10, Valete, Dama, Rei);



2⁶=64, portanto cada baralho poderia utilizar-se de 6 bits, porém para que seja possível inutilizar cartas já usadas, resolvi adotar o conceito de utilizar os 2 bits mais significativos para representar de qual baralho veio a carta, portanto:

O jogo de blackjack se utiliza de até 4 baralhos.

00 - Baralho 0,
01 - Baralho 1,
10 - Baralho 2,
11 - Baralho 3.

O que por si só, já passaria nosso baralho para obrigatoriamente 8 bits de comprimento.

Entretanto, afim de deixar a mecânica mais organizada, também resolvi reservar mais dois bits afim de identificar de qual naipe a carta é, através do terceiro e quarto bit mais significativo, de tal modo:


00 - Copas,
01 - Espadas, 
10 - Ouros, 
11 - Paus.

A sequência padrão então, será formada por:
0001-A
0010-2
0011-3
0100-4
0101-5
0110-6
0111-7
1000-8
1001-9
1010-10
1011-J
1100-Q
1101-K

Exemplo amostral, Uma carta 4 de paus do Segundo baralho:

10 - Segundo baralho
11 - Carta de Paus
0100 - 4 
-----------
Portanto:
-----------
10110100

Para implementar o gerador de números aleatórios pensei em utilizar um conceito proprietário, pode não ser o melhor em área, consumo ou velocidade, no entanto, o objetivo é justamente criar algo sem consultar bibliografias externas.

O clock padrão do FPGA Basys 2 é ajustável e de até 100Mhz, afim de implementar nosso gerador aleatório, pensei em utilizar um conceito de um contador para cada baralho, porém que a cada ciclo de clock irá fornecer uma carta em uma sequência pré-definida e que será também aleatorizada através de uma seleção sortida, a exemplo:

Para isso, previamente será implementado um divisor de clock, também conhecido como baud-rate generator:

No 1* posedge o 1* contador (1* baralho) mostrará o primeiro valor salvo, um 6 de ouros; //Gerado por 1/2 clock, logo 50Mhz.
No 1* posedge o 2* contador (2* baralho) mostrará o primeiro valor salvo, um 9 de paus;  //Gerado por 1/4 clock, logo 25Mhz.
No 1* posedge o 3* contador (3* baralho) mostrará o primeiro valor salvo, um J de ouros; //Gerado por 1/8 clock, logo 12.5Mhz.
No 1* posedge o 4* contador (4* baralho) mostrará o primeiro valor salvo, um A de copas; //Gerado por 1/16 clock, logo 6.25Mhz.

E as contagens irão se repetir em loop até o valor máximo de contagem, quando o operador decidir puxar uma carta, 

Um sistema de mux com clock distintos irão controlar o puxador de baralho, sendo que a primeira entrada do mux virá um clock de 1/32 clock de entrada, a segunda 1/64 o clock de entrada, a terceira 1/128 do clock de entrada e a quarta um clock de 1/256 do clock de entrada, portanto, uma cadeira de Flip-Flops a antecederá.

O seletor deste mux será operado por um outro sistema de contador de 2 bits com contagem de 00 a 11, em velocidade máxima, ou seja 100Mhz. 

Lembrando que, é um sistema pseudo-aleatório, porém com a lógica que tracei em mente, parece ter uma entropia adequada ao uso, estou pensando em implementar um buffer fifo para contabilizar e excluir as cartas já usadas, isso melhoraria a aleatoriedade do sistema, pois assim seria possível reembaralhar em uma cadeia de latch os valores restantes a cada rodada.






