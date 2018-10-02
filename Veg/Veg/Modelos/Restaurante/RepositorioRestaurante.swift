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
        
        let restauranteData = ["Nome" : restaurante.getName(),
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
        print(self.restaurantes[0].getName())
        print(121212121212)
        
        
        defaultsData.set(self.restaurantes, forKey: "restaurantes")
    }
    
    func removerRestaurante(restaurante: Restaurante) {
        
    }
    
    func atualizarRestaurante(restaurante: Restaurante) {
        
    }
    
    func buscarRestaurantes(longitudeUsuario: String, latitudeUsuario: String) -> [Restaurante] {
        let restauranteDB = Database.database().reference().child("Restaurantes")
        
        restauranteDB.observe(.childAdded, with: { (snapshot) in
            let snapshotValue = snapshot.value as! Dictionary<String, String>
            
            print(snapshot)
        })
        let x: [Restaurante] = []

        return x
    }
    
   
    
    
    
    
}
