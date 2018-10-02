//
//  Fachada.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 01/10/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

import Foundation

class Fachada{
    
    static var shared = Fachada()

    var controladorLoginFB: ControladorRealizarLogin
    var controladorBuscarRestaurante: ControladorBuscarRestaurantes
    
    private init(){
        let fabricaReps: RepositorioFabricaAbstrata = FabricaNSDefaults() as RepositorioFabricaAbstrata
        
        let repContas = fabricaReps.criarRepositorioContas()
        let repRestaurantes = fabricaReps.criarRepositorioRestaurantes()
        
        self.controladorLoginFB = ControladorRealizarLogin(cadastroConta: repContas)
        self.controladorBuscarRestaurante = ControladorBuscarRestaurantes(cadastroRestaurante: repRestaurantes)
        
        
    }
    
    func network(){
        
    }
    
    func realizarLogin(login: String, senha: String){
        
        
    }
    
    func buscarRestaurante(latitude: String, longitude: String) -> [Restaurante]{
        return controladorBuscarRestaurante.buscarRestaurantes(latitude: latitude, longitude: longitude)
    }
    
    func inserirRestaurante(restaurante: Restaurante){
        controladorBuscarRestaurante.inserirRestaurante(restaurante: restaurante)
    }
    
    func removerRestaurante(restaurante: Restaurante){
        controladorBuscarRestaurante.removerRestaurante(restaurante: restaurante)
    }
    
    func atualizarRestaurante(restaurante: Restaurante){
        controladorBuscarRestaurante.atualizarRestaurante(restaurante: restaurante)
    }
    
    
    
}
