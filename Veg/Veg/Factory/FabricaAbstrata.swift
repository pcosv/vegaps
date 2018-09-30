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
    func criarRepositorioRestaurantes() -> IRepositorioRestaurante
    
}






