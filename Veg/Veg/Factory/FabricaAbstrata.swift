//
//  AbstractFactory.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 30/09/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

import Foundation

protocol AbstractFactoryRepository {
    
    func criarRepositorioContas() -> IRepositorioContas
    func criarRepositorioRestaurantes -> IRepositorioRestaurante
    
}

protocol IRepositorioContas {
    
    func inserirConta(conta: Conta)
    func removeElement(conta: Conta)
    func update(conta: Conta)
    
}

protocol IRepositorioRestaurante {
    
    func inserirRestaurante(restaurante: Restaurante)
    func removeElement(restaurante: Restaurante)
    func update(restaurante: Restaurante)
    
}



