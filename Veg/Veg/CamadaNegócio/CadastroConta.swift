//
//  CadastroConta.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 01/10/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

import Foundation

class CadastroConta{
    
    var cadastroConta: IRepositorioContas
    
    init(cadastroConta: IRepositorioContas) {
        self.cadastroConta = cadastroConta
    }
    
    func existe(id: String) -> Bool{
        return false
    }
    
    func inserirConta(conta: Conta){
        
    }
    
    func removerConta(conta: Conta){
        
    }
    
    func atualizarConta(conta: Conta){
        
    }
    
    

}
