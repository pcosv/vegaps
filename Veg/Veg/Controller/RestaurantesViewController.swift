//
//  RestaurantesViewController.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 01/10/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

import UIKit
import Firebase


class RestaurantesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var fachada = Fachada.shared
    var restaurantes: [Restaurante] = []
    
    @IBOutlet weak var restaurantesTableView: UITableView!
    @IBOutlet weak var labelGetNome: UITextField!
    @IBOutlet weak var userName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       

        //restaurantes = fachada.buscarRestaurante(latitude: "0", longitude: "0")
        restaurantes.append(Restaurante(id: "1", nome: "aa", longitude: "1", latitude: "1", veg: true))
        restaurantes.append(Restaurante(id: "11", nome: "bb", longitude: "11", latitude: "11", veg: false))
        restaurantes.append(Restaurante(id: "111", nome: "bb", longitude: "111", latitude: "111", veg: true))

 
        restaurantesTableView.delegate = self
        restaurantesTableView.dataSource = self
        
        userName.text = Auth.auth().currentUser?.email
        
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = restaurantesTableView.dequeueReusableCell(withIdentifier: "restauranteTableViewCell", for: indexPath) as! RestauranteTableViewCell
        
        cell.nome.text = restaurantes[indexPath.row].getName()

        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    

    @IBAction func salvarRestaurante(_ sender: UIButton) {
        fachada.inserirRestaurante(restaurante: Restaurante(id: "00001", nome: labelGetNome.text!, longitude: "00003", latitude: "00003", veg: false))
        
       // popupCadastro.isHidden = true
        labelGetNome.text = ""

        restaurantesTableView.reloadData()
    }
    

}
