//
//  mapViewController.swift
//  Energy_project_continued
//
//  Created by Sarah Egener on 10/25/15.
//  Copyright (c) 2015 TAM. All rights reserved.
//

import UIKit
import MapKit

class mapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate  {
    
    @IBOutlet weak var boulderButton: UIButton!
    @IBOutlet weak var westButton: UIButton!
    @IBOutlet weak var denverButton: UIButton!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var theMap: MKMapView!
    
    @IBAction func boulderText(sender: UIButton) {
        if sender.tag == 1{
            label1.text = "Best Buy: 1740 30th St. Boulder, 303-449-4221"
            label2.text = "Home Depot: 1600 29th St. Boulder, 303-449-4221"
            label3.text = "Contract Appliance: 1661 28th St. Boulder, 720-345-2323"
        }
    }
    
    @IBAction func westText(sender: UIButton) {
        if sender.tag == 2{
            label1.text = "Appliance Factory: 5880 W 88th Ave. Westminister, 303-657-0199"
            label2.text = "Best Choice Appliance: 7880 N Federal Bldv. Westminister, 303-650-2225"
            label3.text = "Best Buy: 9369 N Sheridan Blvd. Westminister, 303-426-4434"
        }
    }
    
    
    @IBAction func denverText(sender: UIButton) {
        if sender.tag == 3{
            label1.text = "Appliance Factory: 2816 Colorado Blvd. Denver, 303-388-0823"
            label2.text = "Contract Appluance: 1045 Zuni St. Denver, 303-996-1002"
            label3.text = "Sears: 701 Osage St. Denver, 303-892-8649"
        }
    }
    


    override func viewDidLoad() {
        //BOULDER
        let bestBuy = CLLocationCoordinate2D(latitude:40.0167, longitude: -105.25326)
        let span2 = MKCoordinateSpanMake(0.5, 0.5)
        let region2 = MKCoordinateRegionMake(bestBuy,span2)
        theMap.setRegion(region2, animated: true)
        let annotation2 = MKPointAnnotation()
        annotation2.coordinate = bestBuy
        annotation2.title="Best Buy"
        annotation2.subtitle="1740 30th St. Boulder"
        theMap.addAnnotation(annotation2)
        
        let homeDepot = CLLocationCoordinate2D(latitude:40.01556, longitude: -105.256022)
        let span3 = MKCoordinateSpanMake(0.5, 0.5)
        let region3 = MKCoordinateRegionMake(homeDepot,span3)
        theMap.setRegion(region3, animated: true)
        let annotation3 = MKPointAnnotation()
        annotation3.coordinate = homeDepot
        annotation3.title="Home Depot"
        annotation3.subtitle="1600 29th St. Boulder"
        theMap.addAnnotation(annotation3)
        
        let contractApp = CLLocationCoordinate2D(latitude:40.01596, longitude: -105.258756)
        let span4 = MKCoordinateSpanMake(0.5, 0.5)
        let region4 = MKCoordinateRegionMake(contractApp,span4)
        theMap.setRegion(region4, animated: true)
        let annotation4 = MKPointAnnotation()
        annotation4.coordinate = contractApp
        annotation4.title="Contract Appliance"
        annotation4.subtitle="1661 28th St. Boulder"
        theMap.addAnnotation(annotation4)
        
        //WESTMINISTER
        let appFactory = CLLocationCoordinate2D(latitude:39.8560, longitude: -105.0618)
        let span5 = MKCoordinateSpanMake(0.5, 0.5)
        let region5 = MKCoordinateRegionMake(appFactory,span5)
        theMap.setRegion(region5, animated: true)
        let annotation5 = MKPointAnnotation()
        annotation5.coordinate = appFactory
        annotation5.title="Factory Appliance"
        annotation5.subtitle="880 W 88th Ave. Westminister"
        theMap.addAnnotation(annotation5)
        
        let bestChoice = CLLocationCoordinate2D(latitude:39.8396, longitude: -105.0247)
        let span6 = MKCoordinateSpanMake(0.5, 0.5)
        let region6 = MKCoordinateRegionMake(bestChoice,span6)
        theMap.setRegion(region6, animated: true)
        let annotation6 = MKPointAnnotation()
        annotation6.coordinate = bestChoice
        annotation6.title="Best Choice Appliance"
        annotation6.subtitle="7880 N Federal Bldv. Westminister"
        theMap.addAnnotation(annotation6)
        
        let bestBuyAgain = CLLocationCoordinate2D(latitude:39.8669, longitude: -105.0534)
        let span7 = MKCoordinateSpanMake(0.5, 0.5)
        let region7 = MKCoordinateRegionMake(bestBuyAgain,span7)
        theMap.setRegion(region7, animated: true)
        let annotation7 = MKPointAnnotation()
        annotation7.coordinate = bestBuyAgain
        annotation7.title="Best Buy"
        annotation7.subtitle="9369 N Sheridan Blvd. Westminister"
        theMap.addAnnotation(annotation7)
        
        //DENVER
        let appFactoryAgain = CLLocationCoordinate2D(latitude:39.7569, longitude: -104.9402)
        let span8 = MKCoordinateSpanMake(0.5, 0.5)
        let region8 = MKCoordinateRegionMake(appFactoryAgain,span8)
        theMap.setRegion(region8, animated: true)
        let annotation8 = MKPointAnnotation()
        annotation8.coordinate = appFactoryAgain
        annotation8.title="Appliance Factory"
        annotation8.subtitle="2816 Colorado Blvd. Denver"
        theMap.addAnnotation(annotation8)
        
        let contractAppAgain = CLLocationCoordinate2D(latitude:39.7330, longitude: -105.0164)
        let span9 = MKCoordinateSpanMake(0.5, 0.5)
        let region9 = MKCoordinateRegionMake(contractAppAgain,span9)
        theMap.setRegion(region9, animated: true)
        let annotation9 = MKPointAnnotation()
        annotation9.coordinate = contractAppAgain
        annotation9.title="Contact Appliance"
        annotation9.subtitle="2816 Colorado Blvd. Denver"
        theMap.addAnnotation(annotation9)
        
        let sears = CLLocationCoordinate2D(latitude:39.7272, longitude: -105.0068)
        let span1 = MKCoordinateSpanMake(0.5, 0.5)
        let region1 = MKCoordinateRegionMake(sears,span1)
        theMap.setRegion(region1, animated: true)
        let annotation1 = MKPointAnnotation()
        annotation1.coordinate = sears
        annotation1.title="Sears"
        annotation1.subtitle="701 Osage St. Denver"
        theMap.addAnnotation(annotation1)
        

        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
