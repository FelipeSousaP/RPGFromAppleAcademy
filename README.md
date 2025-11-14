Projeto: Dungeon

O Projeto se trata de um mini-sistema de RPG que o jogador controla um aventureiro que deve pegar um calice sagrado em uma masmorra, la dentro haverá um inimigo que vai tentar impedir o jogador de obter seu objetivo,
Assim havendo um confronto direito entre os dois.
-----------------------------------------------------------
**Mecanicas do jogador: O jogador escreve a ação do jogador**
--> ATACAR O INIMIGO 
--> DEFENDER-SE
--> FUGIR DA SALA

A ação comentada será executada pelo jogador.
-----------------------------------------------------------
**Atributos do Player e Inimigo**
-->Player
    VIDA: 12
    Força Total: 4

  -->Inimigo
    Vida: 7
    Ataque Fraco: 2
    Ataque Forte: 5

Após matar o inimigo, o jogador ganha o jogo, 
caso a vida do jogador chega primeiro a zero,
o jogador perderá.
-----------------------------------------------------------

**Funcionamento do programa**
O projeto utiliza o Design Patterns Singloton para conseguir montar o jogo
E no total foram feitos 4 classes.
--> Combatmaneger: Controla todo o combate do jogo e as ações do jogador.
--> Gamemeneger: Resposanvel por controlar a execução do jogo.
--> Inimigo: Controla as ações do inimigo e contem seus atributos.
--> Aventureiro: Contém os atributos do jogador.
-----------------------------------------------------------


