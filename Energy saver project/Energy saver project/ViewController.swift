//
//  ViewController.swift
//  Energy saver project
//
//  Created by Sarah Egener on 9/29/15.
//  Copyright (c) 2015 TAM. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    //header
    @IBOutlet weak var imageSwitch: UIImageView!
    @IBOutlet weak var infoSwitch: UISegmentedControl!
    
    //buttons
    @IBOutlet weak var efficiencyRatio: UIButton!
    @IBOutlet weak var upfrontCost: UIButton!
    @IBOutlet weak var lifetimeCost: UIButton!
    @IBOutlet weak var lifetimeSavings: UIButton!
    @IBOutlet weak var lifetimePollution: UIButton!
    
    //misc
    @IBOutlet weak var explanationLabel: UILabel!

    
    //labels
    @IBOutlet weak var efficiencyAnswer: UILabel!
    @IBOutlet weak var upfrontAnswer: UILabel!
    @IBOutlet weak var costAnswer: UILabel!
    @IBOutlet weak var savingsAnswer: UILabel!
    @IBOutlet weak var pollutionAnswer: UILabel!
    

    @IBAction func applianceSwitch(sender: UISegmentedControl) {
        if infoSwitch.selectedSegmentIndex == 0{
            imageSwitch.image=UIImage(named:"conventional")
            efficiencyAnswer.text = "$170"
            upfrontAnswer.text = "9.8"
            costAnswer.text = "$537"
            savingsAnswer.text = "none"
            pollutionAnswer.text = "none"
            }
        else if infoSwitch.selectedSegmentIndex == 1{
            imageSwitch.image=UIImage(named:"star")
            efficiencyAnswer.text = "$220"
            upfrontAnswer.text = "10.8"
            costAnswer.text = "$488"
            savingsAnswer.text = "534 kwh"
            pollutionAnswer.text = "822 lb. CO2"
        }
    }
    
    
    @IBAction func buttonExplanations(sender: UIButton) {
        if sender.tag == 1{
            explanationLabel.text = "how efficient it is"
        }
        else if sender.tag==2{
            explanationLabel.text = "first cost paid right when appliance received"
        }
        else if sender.tag==3{
            explanationLabel.text = "accumulated costs over its lifetime"
        }
        else if sender.tag==4{
            explanationLabel.text = "accumulated energy saved due to efficiency"
        }
        else if sender.tag==5{
            explanationLabel.text = "accumulated pollution avoided due to efficiency"
        }
    }
    
    
    @IBOutlet weak var theMap: MKMapView!
    @IBOutlet weak var theLabel: UILabel!
    
    var manager: CLLocationManager!
    var myLocations: [CLLocation] = []
    
    
    func locationManager(manager:CLLocationManager, didUpdateLocations locations:[AnyObject]) {
        theLabel.text = "\(locations[0])"
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
        theMap.mapType = MKMapType.Satellite
        theMap.showsUserLocation = true

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

