class Aventureiro{
    init(){}
    var VidaAtual: Int = 12
    var ForcaAtual: Int = 1
    var DanoDaEspada: Int = 3
    
    var vidamax = 12
    func DanoTotal() -> Int{
        return DanoDaEspada + ForcaAtual
    }
   
    func verStatus(){
        VidaAtual = vidamax + 2
        ForcaAtual += 2
        ForcaAtual += 2
        print("Parabens, voce matou o inimigo, agora voce ganhou 2 pontos de vida e forca\n Forca atual: \(ForcaAtual), Vida Atual: \(VidaAtual)")
        Gamemaneger.Instance.Vitoria()
    }
}

