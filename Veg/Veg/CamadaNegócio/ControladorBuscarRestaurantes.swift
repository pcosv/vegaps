//
//  ControladorBuscarRestaurantes.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 01/10/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

import Foundation

class ControladorBuscarRestaurantes{
    
    var cadastroRestaurante: CadastroRestaurante
    
    init(cadastroRestaurante: IRepositorioRestaurante){
        self.cadastroRestaurante = CadastroRestaurante(cadastroRestaurante: cadastroRestaurante)
    }
    
    func buscarRestaurantes(latitude: String, longitude: String) -> [Restaurante]{
        return cadastroRestaurante.listarRestaurante(latitude: latitude, longitude: longitude)
    }
    
    func inserirRestaurante(restaurante: Restaurante){
        cadastroRestaurante.inserirRestaurante(restaurante: restaurante)
    }
    
    func removerRestaurante(restaurante: Restaurante){
        cadastroRestaurante.removerRestaurante(restaurante: restaurante)
    }
    
    func atualizarRestaurante(restaurante: Restaurante){
        cadastroRestaurante.atualizarRestaurante(restaurante: restaurante)
    }
    
}
