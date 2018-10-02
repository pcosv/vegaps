//
//  ControladorRealizarLogin.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 01/10/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

import Foundation

class ControladorRealizarLogin{
    
    var cadastroConta: CadastroConta
    
    init(cadastroConta: IRepositorioContas){
        self.cadastroConta = CadastroConta(cadastroConta: cadastroConta)
    }
    
}
