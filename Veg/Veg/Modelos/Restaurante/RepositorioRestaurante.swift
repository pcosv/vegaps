//
//  RepositorioRestaurante.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 01/10/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//
import Firebase

class RepositorioRestaurante: IRepositorioRestaurante{
    
    var restaurantes: [Restaurante]
    
    init() {
        self.restaurantes = defaultsData.array(forKey: "restaurantes") as? [Restaurante] ?? []
    }
    
    func inserirRestaurante(restaurante: Restaurante) {
        let restauranteDB = Database.database().reference().child("Restaurantes")
        
        let restauranteData = ["Id" : restaurante.getId(),
                               "Nome" : restaurante.getName(),
                               "Longitude" : restaurante.getLongitude(),
                               "Latitude": restaurante.getLatitude(),
                               "Veg" : restaurante.isVeg()] as [String : Any]
        
        restauranteDB.childByAutoId().setValue(restauranteData) {
            (error, reference) in
            if error != nil {
                print(error!)
            } else {
                //success
            }
        }
        
        
        
        
        self.restaurantes.append(restaurante)
       
    }
    
    func removerRestaurante(restaurante: Restaurante) {
        
    }
    
    func atualizarRestaurante(restaurante: Restaurante) {
        
    }
    
    func buscarRestaurantes(longitudeUsuario: String, latitudeUsuario: String) -> [Restaurante] {
        
        var restaurantes: [Restaurante] = []
        
        let restauranteDB = Database.database().reference().child("Restaurantes")
        
        
        
        restauranteDB.observe(.childAdded) { (snapshot) in
            let snapshotValue = snapshot.value as! Dictionary<String,String>
            
            let nome = snapshotValue["Nome"]
            let veg = snapshotValue["Veg"]
            let latitude = snapshotValue["Latitude"]
            let longitude = snapshotValue["Longitude"]
            
          
            restaurantes.append(Restaurante(id: "001", nome: nome!, longitude: longitude!, latitude: latitude!, veg: Bool(veg!) ?? false))
            
        }
        
    
        return restaurantes
    }
    
   
    
    
    
    
}
