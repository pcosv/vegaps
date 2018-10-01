//
//  Fachada.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 01/10/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

import Foundation

class Fachada{
    
    //var fabrica: AbstractFactoryRepository = FabricaA.shared
    
    var controladorLoginFB: ControladorRealizarLogin
    var controladorBuscarRestaurante: ControladorBuscarRestaurantes
    

    init(){
        let fabricaReps: RepositorioFabricaAbstrata = FabricaNSDefaults() as! RepositorioFabricaAbstrata
        
        self.controladorLoginFB = fabricaReps.criarRepositorioContas() as! ControladorRealizarLogin
        self.controladorBuscarRestaurante = fabricaReps.criarRepositorioRestaurantes() as! ControladorBuscarRestaurantes
        
        
        
        
    }
    
    
    
}
