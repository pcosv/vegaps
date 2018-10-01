//
//  CadastroRestaurante.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 01/10/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

import Foundation

class CadastroRestaurante{
    
    var repositorioR: IRepositorioRestaurante
    
    init(repositorioR:IRepositorioRestaurante) {
        self.repositorioR = repositorioR
    }
    
    func inserirRestaurante(restaurante: Restaurante){
        repositorioR.inserirRestaurante(restaurante: restaurante)
    }
    
}
