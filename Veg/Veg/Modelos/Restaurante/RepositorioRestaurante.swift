//
//  RepositorioRestaurante.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 01/10/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

class RepositorioRestaurante: IRepositorioRestaurante{
    
    var restaurantes: [Restaurante]
    
    init() {
        self.restaurantes = defaultsData.array(forKey: "restaurantes") as? [Restaurante] ?? []
    }
    
    func inserirRestaurante(restaurante: Restaurante) {
        
        
        
        
        self.restaurantes.append(restaurante)
        print(self.restaurantes[0].getName())
        print(121212121212)
        
        
        defaultsData.set(self.restaurantes, forKey: "restaurantes")
    }
    
    func removerRestaurante(restaurante: Restaurante) {
        
    }
    
    func atualizarRestaurante(restaurante: Restaurante) {
        
    }
    
    func buscarRestaurantes(longitudeUsuario: String, latitudeUsuario: String) -> [Restaurante] {
        let x: [Restaurante] = []
        
        return x
        
    }
    
   
    
    
    
    
}
