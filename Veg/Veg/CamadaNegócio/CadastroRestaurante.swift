//
//  CadastroRestaurante.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 01/10/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

import Foundation

class CadastroRestaurante{
    
    var cadastroRestaurante: IRepositorioRestaurante
    
    init(cadastroRestaurante: IRepositorioRestaurante) {
        self.cadastroRestaurante = cadastroRestaurante
    }
    
    func listarRestaurante(latitude: String, longitude: String) -> [Restaurante]{
        return self.cadastroRestaurante.buscarRestaurantes(longitudeUsuario: latitude, latitudeUsuario:longitude)
    }
    
    func inserirRestaurante(restaurante: Restaurante){
        self.cadastroRestaurante.inserirRestaurante(restaurante: restaurante)
    }
    
    func removerRestaurante(restaurante: Restaurante){
        self.cadastroRestaurante.removerRestaurante(restaurante: restaurante)
    }
    
    func atualizarRestaurante(restaurante: Restaurante){
        self.atualizarRestaurante(restaurante: restaurante)
    }
    
    
   
    
}
