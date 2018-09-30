//
//  RestaurantClass.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 30/09/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

import Foundation

class Restaurant{
    
    private var id: String
    private var name: String
    private var longitude: String
    private var latitude: String
    
    init(id: String, name: String, longitude: String, latitude: String) {
        self.id = id
        self.name = name
        self.longitude = longitude
        self.latitude = latitude
    }
    
    func getId() -> String{
        return id
    }
    
    func getName() -> String{
        return name
    }
    
    func getLongitude() -> String{
        return longitude
    }
    
    func getLatitude() -> String{
        return latitude
    }
}
