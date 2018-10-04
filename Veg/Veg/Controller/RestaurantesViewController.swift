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
    @IBOutlet weak var userName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       

        
      //  restaurantes.append(Restaurante(id: "1", nome: "aa", longitude: "-34.923857" , latitude: "-8.0288491", veg: "true"))
      //  restaurantes.append(Restaurante(id: "11", nome: "bb", longitude:  "-34.9051156", latitude: "-8.0467489", veg: "false"))
     //   restaurantes.append(Restaurante(id: "111", nome: "cc", longitude:  "-34.9052988", latitude: "-8.0826188", veg: "true"))

 
        restaurantesTableView.delegate = self
        restaurantesTableView.dataSource = self
        
        userName.text = Auth.auth().currentUser?.email
        
        
        restaurantesTableView.layer.cornerRadius = 10
        restaurantesTableView.layer.borderWidth = 1
        restaurantesTableView.layer.borderColor = #colorLiteral(red: 0.3215686275, green: 0.5254901961, blue: 0.5411764706, alpha: 1)
        
        

        NotificationCenter.default.addObserver(self, selector: #selector(procurarRest), name: Notification.Name("NotificationIdentifier"), object: nil)

        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = restaurantesTableView.dequeueReusableCell(withIdentifier: "restauranteTableViewCell", for: indexPath) as! RestauranteTableViewCell
        
        cell.nome.text = restaurantes[indexPath.row].getName()
        cell.isVeg.text = restaurantes[indexPath.row].isVeg() == "true" ? "Vegano" : "Vegetariano"
        cell.latitude = Double(restaurantes[indexPath.row].getLatitude())!
        cell.longitude = Double(restaurantes[indexPath.row].getLongitude())!

        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    

    @IBAction func salvarRestaurante(_ sender: UIButton) {
        restaurantesTableView.isHidden = false
        performSegue(withIdentifier: "restaurantesToCadastro", sender: nil)
    }
    
    @IBAction func procurarRestaurantes(_ sender: UIButton) {
        
        
        
        restaurantes = fachada.buscarRestaurante(latitude: "0", longitude: "0")
        
        restaurantesTableView.reloadData()
  
    }
    
    @objc func procurarRest(){
        
        if restaurantesTableView.isHidden{
            restaurantes = fachada.buscarRestaurante(latitude: "0", longitude: "0")
        }
        
        restaurantesTableView.reloadData()
        restaurantesTableView.isHidden = false
    }
    
    
}
