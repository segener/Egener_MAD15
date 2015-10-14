//
//  ViewController.swift
//  Lab 5
//
//  Created by Sarah Egener on 10/12/15.
//  Copyright (c) 2015 TAM. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit


class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    @IBOutlet weak var theMap: MKMapView!
    
    var manager: CLLocationManager!
    var myLocations: [CLLocation] = []
    
    
    func locationManager(manager:CLLocationManager, didUpdateLocations locations:[AnyObject]) {
        myLocations.append(locations[0] as! CLLocation)
        
        let spanX = 0.007
        let spanY = 0.007
        var newRegion = MKCoordinateRegion(center: theMap.userLocation.coordinate, span: MKCoordinateSpanMake(spanX, spanY))
        theMap.setRegion(newRegion, animated: true)
        
        if (myLocations.count > 1){
            var sourceIndex = myLocations.count - 1
            var destinationIndex = myLocations.count - 2
            let c1 = myLocations[sourceIndex].coordinate
            let c2 = myLocations[destinationIndex].coordinate
            var a = [c1, c2]
            var polyline = MKPolyline(coordinates: &a, count: a.count)
            theMap.addOverlay(polyline)
        }
    }
    
    func mapView(mapView: MKMapView!, rendererForOverlay overlay: MKOverlay!) -> MKOverlayRenderer! {
        
        if overlay is MKPolyline {
            var polylineRenderer = MKPolylineRenderer(overlay: overlay)
            polylineRenderer.strokeColor = UIColor.blueColor()
            polylineRenderer.lineWidth = 4
            return polylineRenderer
        }
        return nil
    }
    
 override func viewDidLoad() {
        super.viewDidLoad()
        manager = CLLocationManager()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestAlwaysAuthorization()
        manager.startUpdatingLocation()
        theMap.delegate = self
        theMap.mapType = MKMapType.Hybrid
        theMap.showsUserLocation = true
    
        let university = CLLocationCoordinate2D(latitude:40.00764, longitude: -105.2698)
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegionMake(university,span)
        theMap.setRegion(region, animated: true)
        let annotation = MKPointAnnotation()
        annotation.coordinate = university
        annotation.title="Atlas Building"
        annotation.subtitle="CU-Boulder"
        theMap.addAnnotation(annotation)
    
        let bestBuy = CLLocationCoordinate2D(latitude:40.0167, longitude: -105.25326)
        let span2 = MKCoordinateSpanMake(0.05, 0.05)
        let region2 = MKCoordinateRegionMake(bestBuy,span2)
        theMap.setRegion(region2, animated: true)
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = bestBuy
        annotation2.title="Best Buy"
        annotation2.subtitle="1740 30th St. Boulder"
        theMap.addAnnotation(annotation2)
    
        let homeDepot = CLLocationCoordinate2D(latitude:40.01556, longitude: -105.256022)
        let span3 = MKCoordinateSpanMake(0.05, 0.05)
        let region3 = MKCoordinateRegionMake(homeDepot,span3)
        theMap.setRegion(region3, animated: true)
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = homeDepot
        annotation3.title="Home Depot"
        annotation3.subtitle="1600 29th St. Boulder"
        theMap.addAnnotation(annotation3)
    
        let contractApp = CLLocationCoordinate2D(latitude:40.01596, longitude: -105.258756)
        let span4 = MKCoordinateSpanMake(0.05, 0.05)
        let region4 = MKCoordinateRegionMake(contractApp,span3)
        theMap.setRegion(region4, animated: true)
        let annotation4 = MKPointAnnotation()
        annotation4.coordinate = contractApp
        annotation4.title="Contract Appliance"
        annotation4.subtitle="1661 28th St. Boulder"
        theMap.addAnnotation(annotation4)
    

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

