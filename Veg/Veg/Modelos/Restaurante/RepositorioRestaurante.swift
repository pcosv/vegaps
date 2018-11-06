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
        
        try? UserDefaults.standard.set(PropertyListEncoder().encode(self.restaurantes), forKey: "restaurante")
       
    }
    
    func removerRestaurante(restaurante: Restaurante) {
        
    }
    
    func atualizarRestaurante(restaurante: Restaurante) {
        
    }
    
    func buscarRestaurantes(longitudeUsuario: String, latitudeUsuario: String) -> [Restaurante] {
        
       // func buscarRestaurantes(longitudeUsuario: String, latitudeUsuario: String, completion: @escaping (([Restaurante])->())) {
        
        
        //self.restaurantes = []
        
    
        
        /*let restauranteDB = Database.database().reference().child("Restaurantes")
        
        
        restauranteDB.observe(.childAdded) { (snapshot) in
            let snapshotValue = snapshot.value as! Dictionary<String,String>
            
            let nome = snapshotValue["Nome"]
            
            let veg = snapshotValue["Veg"]
            let latitude = snapshotValue["Latitude"]
            let longitude = snapshotValue["Longitude"]

          
            self.restaurantes.append(Restaurante(id: "001", nome: nome!, longitude: longitude!, latitude: latitude!, veg: veg!))
            
            NotificationCenter.default.post(name: Notification.Name("NotificationIdentifier"), object: nil)

            
        }*/
        
        let encoded = UserDefaults.standard.object(forKey: "restaurante") as! [Restaurante]
        print(encoded)
      //  let restaurantes = try! PropertyListDecoder().decode(Restaurante.self, from: encoded)
        
    
        return []
    }
    
   
    
    
    
    
}
