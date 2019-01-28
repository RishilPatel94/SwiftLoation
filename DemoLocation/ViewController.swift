//
//  ViewController.swift
//  DemoLocation
//
//  Created by Rishil Patel on 28/01/19.
//  Copyright © 2019 Rishil Patel. All rights reserved.
//

import UIKit
import CoreLocation
class ViewController: UIViewController,CLLocationManagerDelegate {
    var locationManager = CLLocationManager()
    var currentlocation:CLLocation!
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func authorizelocationstates(){
            currentlocation = locationManager.location
            print(currentlocation)
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        locationManager = manager
        // Only called when variable have location data
        authorizelocationstates()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        // Get Location Permission one time only if user denied then have to on manually from app setting
        locationManager.requestWhenInUseAuthorization()
        // Need to update location and get location data in locationManager object with delegate
        locationManager.startUpdatingLocation()
        locationManager.startMonitoringSignificantLocationChanges()
        
    }
    
}

