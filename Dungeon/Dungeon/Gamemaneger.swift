import Darwin
class Gamemaneger{
    static let Instance: Gamemaneger = Gamemaneger()
    private init(){ }
    
    var Vilão: Inimigo = Inimigo()
    var Heroi: Aventureiro = Aventureiro()
    
    //variaveis
    var EmAndamento: Bool = true
    
    func Iniciarjogo(){
        print("-----Bem vindo a Masmorra no Console-----")
        print("\nVoce é um grande aventureiro que está atrás do lendario calice sagrado.\nAquele que o possuir, poderá alcançar a riqueza eterna!!!!!\nLhe desejo sorte, Grande aventureiro!!! ")
        print("Ao entrar no salão da masmorra, o Grande aventureiro vê um inimigo a sua frente,assim ambos se olham sinistramente")
        EmExecucao()
    }
    
    func EmExecucao(){
        while EmAndamento{
            Combatmaneger.Instance.SistemaDeTurno()
        }
        
        if Aventureiro().VidaAtual <= 0{
            EmAndamento = false
            Derrota()
        }
    }
    
    func ApagarConsole() {
        for _ in 0...1 {
            print("\n")
        }
    }
    
    func Vitoria(){
        print("\nApós uma batalha árdua, O grande aventureiro Finalmente encontra o lendário calice,\n assim podendo voltar pra casa rico pra sempre.")
        exit(4)
    }
    
    func Derrota(){
        print("\nInfelimente o Grande aventureiro teve um fim na masmorra")
        exit(3)
    }
}
