import Darwin

class Combatmaneger{
    static let Instance: Combatmaneger = Combatmaneger()
    private init(){}
    var vilao = Gamemaneger.Instance.Vilão
    var heroi = Gamemaneger.Instance.Heroi
    
    var turno: Int = 0
    var Protegido: Bool = false
    
    func SistemaDeTurno(){
        turno += 1
        if turno % 2 == 0{ //par
            vilao.EscolhaDoInimigo()
        }
        else{ //Impar
            EscolhaDoJogador()
        }
    }
    
    func EscolhaDoJogador(){
        Gamemaneger.Instance.ApagarConsole()
        print("Agora é sua vez, escolha a sua proxima ação!!!\nEscreva a sua ação IGUAL a opção mostrada abaixo\n ATACAR O INIMIGO\n DEFENDER-SE\n FUGIR DA SALA")
        print("\nDano Total:\(heroi.DanoTotal()), Vida Atual: \(heroi.VidaAtual)\n\nDano Total do inimigo:\(vilao.ataque1) ou \(vilao.ataqueAIAIAI), Vida Atual: \(vilao.VidaAtualInimiga)\nEscreva abaixo a sua opção: ")
        
        if let Texto = readLine(){
            if Texto == "ATACAR O INIMIGO"{
                AtaqueDoPlayer()
                if vilao.VidaAtualInimiga <= 0{
                    heroi.verStatus()
//                    Gamemaneger.Instance.EmAndamento = false
////                    Gamema
                }
            }
            else if Texto == "DEFENDER-SE"{DefesaDoPlayer()}
            else if Texto == "FUGIR DA SALA"{FugirDoPlayer()}
//            else if Texto == "UTILIZAR POÇÃO"{}
            else{
                Gamemaneger.Instance.ApagarConsole()
                print("\nInfelizmente, voce colocou a ação errado\nAgora o sistema do jogo será encerrado.")
                exit(1)
            }
        }
    }
    
    func AtaqueDoPlayer(){
        Protegido = false
        print("\nO Grande aventureiro ataca o inimigo com sua espada")
        if !vilao.defendendo{
            vilao.VidaAtualInimiga -= heroi.DanoTotal()
        }
    }
    func DefesaDoPlayer(){
        Protegido = true
        print("\nO Grande aventureiro defende bravamente o ataque do inimigo!!!")
    }
    
    func FugirDoPlayer(){
        Protegido = false
        print("\nO grande aventureiro, corre covardemente para a sala mais proxima\n Qual sala o grande aventureiro escolheu?")
    }
}

