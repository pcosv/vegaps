//
//  IRepositorioRestaurante.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 30/09/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

protocol IRepositorioRestaurante {
    
    func inserirRestaurante(restaurante: Restaurante)
    func removerRestaurante(restaurante: Restaurante)
    func atualizarRestaurante(restaurante: Restaurante)
    func buscarRestaurantes(longitudeUsuario: String, latitudeUsuario: String) -> [Restaurante]
    
}
