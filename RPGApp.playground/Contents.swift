import UIKit

//: Modelo básico do RPG App

class Personagem{
    let nome: String
    let sistema: SistemaDeRPG
    var componentes: [Componente] = []
    
    init(nome: String, sistema: SistemaDeRPG){
        self.nome = nome
        self.sistema = sistema
    }
    
    func addComponent(compNovo: Componente){
        print("Adicionei um componente!")
        componentes.append(compNovo)
    }
    
    func listAllComponents(){
        for item in componentes{
            print(item.getName())
            print(item.getValue())
        }
    }
    //TODO: Função que traz todos os componentes de um tipo específico
    /*
    func getComponents(componentType: Any) -> [Any] {
        var components: [Any] = []
        for item in componentes{

        }
        return components
    }
    */
    
}

class SistemaDeRPG{
    
}

protocol IValor{
    func getValue() -> Any
}

protocol IName{
    func getName() -> String
}

class Componente : IName{
    var nome: String?
    var icone: UIImage?
    
    func getName() -> String{
        if let meuNome = nome{
            return meuNome
        } else {
            return "Este componente não possui nome"
        }
    }
    
    
    func getValue() -> Any {
        return "Este componente não possui valor"
    }
    
}

class NumeroGenerico: Componente, IValor{
    var numero: Double?
    
    init(meuNumero: Double){
        super.init()
        self.nome = "Numero Generico"
        numero = meuNumero
    }
    
    override func getValue() -> Any {
        if let meuNumero = numero{
            return meuNumero
        } else {
            return "Este componente não possui valor"
        }
    }

}

class TextoGenerico: Componente, IValor{
    var texto: String?
    
    init(meuTexto: String){
        super.init()
        self.nome = "TextoGenerico"
        texto = meuTexto
    }
    
    override func getValue() -> Any {
        if let meuTexto = texto {
            return meuTexto
        } else {
            return "Este componente não possui valor"
        }
    }

}

class MedidorHPMP: Componente{
    var quantidade: Int?
    
}



