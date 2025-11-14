import Darwin
class Inimigo{
    init() {VidaAtualInimiga = VidaMax}
    
    var VidaMax: Int = 7
    var VidaAtualInimiga: Int = 0
    var ataque1: Int = 2
    var ataqueAIAIAI: Int = 5
    var defendendo: Bool = false
    
    func EscolhaDoInimigo(){
        let _Escolha = Int.random(in: 1...9)
        switch(_Escolha){
        case 1,2,3: ataqueFraco()
            break
        case 4,5,6: ataqueForte()
            break
        case 7,8,9: Defender()
            break
        case 10: Fugir()
            break
        default:
            print("\nErro no Random, feche e clique command + r parar rejogar")
            exit(2)
        }
    }
    
    func ataqueForte() {
        let heroi = Combatmaneger.Instance.heroi
        defendendo = false
        print("\nO inimigo carrega um poderoso ataque...")
        if Combatmaneger.Instance.Protegido{
            print("Porém o jogador se protege comtudo")
        }
        else{
            print("E acerta o jogador em cheio")
            heroi.VidaAtual -= ataqueAIAIAI
        }
    }
    
    func ataqueFraco() {
        let heroi = Combatmaneger.Instance.heroi
        defendendo = false
        print("\nO inimigo carrega um ataque...")
        if Combatmaneger.Instance.Protegido{
            print("Porém o jogador se protege comtudo")
        }
        else{
            heroi.VidaAtual -= ataque1
            print("Aventureiro acertado")
        }
    }
    func Defender(){
        defendendo = true
        print("\nO bravo inimigo defende o ataque")
    }
    func Fugir(){
        defendendo = true
        print("\nCORRE, ESSA JOGADOR É LOCO.\nAssim foge o inimigo")
        Gamemaneger.Instance.Vitoria()
    }
    
}

