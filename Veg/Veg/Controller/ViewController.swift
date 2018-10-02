//
//  ViewController.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 30/09/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

import UIKit
import CoreData

let defaultsData = UserDefaults.standard

class ViewController: UIViewController {

    var fachada = Fachada.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //fachada.controladorBuscarRestaurante.cadastroRestaurante.inserirRestaurante(restaurante: Restaurante(id: "aa", nome: "aa", longitude: "aa", latitude: "aa", veg: false))
        
        
    
        
        print(defaultsData.array(forKey: "restaurantes") as? [Restaurante] ?? "EITA")

        
        
        
        
    }
    
 


}


