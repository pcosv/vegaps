//
//  IRepositorioContas.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 30/09/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

protocol IRepositorioContas {
    
    func inserirConta(conta: Conta)
    func removerConta(conta: Conta)
    func atualizarConta(conta: Conta)
    func existeConta(id: String)
    
}
