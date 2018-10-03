//
//  CadastrarRestauranteViewController.swift
//  Veg
//
//  Created by Victor Leal Porto de Almeida Arruda on 03/10/2018.
//  Copyright © 2018 Vegaps. All rights reserved.
//

import UIKit
import MapKit

class CadastrarRestauranteViewController: UIViewController, CLLocationManagerDelegate {
    
    var fachada = Fachada.shared
    
    @IBOutlet weak var cadastroNome: UITextField!
    @IBOutlet weak var isVeg: UISwitch!
    @IBOutlet weak var mapa: MKMapView!
    
    let regionRadius: CLLocationDistance = 1000
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingHeading()
        
        centerMapOnLocation(location: locationManager.location!)
        
        
        mapa.layer.cornerRadius = 10
        mapa.layer.borderWidth = 1
        mapa.layer.borderColor = #colorLiteral(red: 0.3215686275, green: 0.5254901961, blue: 0.5411764706, alpha: 1)
    }
    
    @IBAction func cadastrarRestaurante(_ sender: UIButton) {
        
        
        
        if cadastroNome.text! != ""{
            
            let novoRestaurante: Restaurante = Restaurante(id: "1", nome: cadastroNome.text!, longitude: 0, latitude: 0, veg: isVeg.isOn)
            
            
            fachada.inserirRestaurante(restaurante: novoRestaurante)
            
            
            dismiss(animated: true, completion: nil)
        }
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius, regionRadius)
        mapa.setRegion(coordinateRegion, animated: true)
    }
    
    
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last{
            let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
            let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
            self.mapa.setRegion(region, animated: true)
            
            print(region.center)
        }
    }
    
}

