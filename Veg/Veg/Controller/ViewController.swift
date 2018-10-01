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

    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        print(defaultsData.array(forKey: "contas") as! [Conta])
        
        
    }
    
 


}



//Trocar ControladorRealizarBusca por ControladorBuscarRestaurantes
