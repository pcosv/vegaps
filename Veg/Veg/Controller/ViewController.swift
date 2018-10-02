//
//  ViewController.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 30/09/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

import UIKit
import CoreData
import Firebase

let defaultsData = UserDefaults.standard

class ViewController: UIViewController {

    var fachada = Fachada.shared
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
         //   fachada.inserirRestaurante(restaurante: Restaurante(id: "aa", nome: "aa", longitude: "aa", latitude: "aa", veg: false))
        
        
        

        
    }
    @IBAction func registrarPressed(_ sender: Any) {
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil {
                print(error!)
            } else {
                // success registration
            }
        }
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil {
                print(error!)
            } else {
                self.performSegue(withIdentifier: "loginToRestaurantes", sender: nil)
            }
        }
    }
    
}


