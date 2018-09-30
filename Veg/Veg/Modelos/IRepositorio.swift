//
//  IRepositorio.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 30/09/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

protocol IRepositorio {
    
    func getId() -> String
    func getNome() -> String
    func getLongitude() -> String
    func getLatitude() -> String
    
}

