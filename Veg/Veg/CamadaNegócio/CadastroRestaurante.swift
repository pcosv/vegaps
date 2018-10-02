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
        let x: [Restaurante] = []
        
        return x
    }
    
    func inserirRestaurante(restaurante: Restaurante){
        self.cadastroRestaurante.inserirRestaurante(restaurante: restaurante)
    }
    
    func removerRestaurante(restaurante: Restaurante){
        
    }
    
    func atualizarRestaurante(restaurante: Restaurante){
        
    }
    
    
   
    
}
