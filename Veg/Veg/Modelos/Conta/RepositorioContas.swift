//
//  RepositorioContas.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 01/10/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

class RepositorioContas: IRepositorioContas{
    
    var contas: [Conta]
    
    init(){
        self.contas = defaultsData.array(forKey: "contas") as? [Conta] ?? []
    }
    
    func inserirConta(conta: Conta) {
        self.contas.append(conta)
        //defaultsData.set(contas, forKey: "contas")
        
    }
    
    func removerConta(conta: Conta) {
        
    }
    
    func atualizarConta(conta: Conta) {
        
    }
    
    func existeConta(id: String) {
        
    }
    
    
    
}
