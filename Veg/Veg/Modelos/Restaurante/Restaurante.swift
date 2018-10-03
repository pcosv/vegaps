//
//  RestaurantClass.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 30/09/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

import Foundation
import MapKit

class Restaurante{
    
    private var id: String
    private var nome: String
    private var longitude: CLLocationDegrees
    private var latitude: CLLocationDegrees
    private var veg: Bool
    
    init(id: String, nome: String, longitude: CLLocationDegrees, latitude: CLLocationDegrees, veg: Bool) {
        self.id = id
        self.nome = nome
        self.longitude = longitude
        self.latitude = latitude
        self.veg = veg
    }
    
    func getId() -> String{
        return id
    }
    
    func getName() -> String{
        return nome
    }
    
    func getLongitude() -> CLLocationDegrees{
        return longitude
    }
    
    func getLatitude() -> CLLocationDegrees{
        return latitude
    }
    
    func isVeg() -> Bool{
        return veg
    }
}
