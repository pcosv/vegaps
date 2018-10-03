//
//  RestauranteTableViewCell.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 01/10/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

import UIKit
import MapKit


class RestauranteTableViewCell: UITableViewCell, CLLocationManagerDelegate {

    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var miniMapa: MKMapView!
    @IBOutlet weak var isVeg: UILabel!
    var latitude: CLLocationDegrees?{
        didSet{
            if let latitude = latitude, let longitude = longitude{
                centerMapOnLocation(location: CLLocation(latitude: latitude, longitude: longitude))
            }
        }
    }
    var longitude: CLLocationDegrees?{
        didSet{
            if let latitude = latitude, let longitude = longitude{
                centerMapOnLocation(location: CLLocation(latitude: latitude, longitude: longitude))
            }
        }
    }
    
    let regionRadius: CLLocationDistance = 100

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius, regionRadius)
        miniMapa.setRegion(coordinateRegion, animated: true)
    }
    

  

}
