//
//  roomViewController.swift
//  Energy_project_continued
//
//  Created by Sarah Egener on 10/26/15.
//  Copyright (c) 2015 TAM. All rights reserved.
//

import UIKit

class roomViewController: UIViewController {
    
    
    @IBOutlet weak var infoSwitch: UISegmentedControl!
    @IBOutlet weak var efficiencyRatio: UILabel!
    @IBOutlet weak var upfrontCost: UILabel!
    @IBOutlet weak var lifetimeCost: UILabel!
    @IBOutlet weak var lifetimeSavings: UILabel!
    @IBOutlet weak var lifetimePollution: UILabel!
  
    @IBAction func applianceSwitch(sender: UISegmentedControl) {
        if infoSwitch.selectedSegmentIndex == 0{
            efficiencyRatio.text = "$170"
            upfrontCost.text = "9.8"
            lifetimeCost.text = "$537"
            lifetimeSavings.text = "none"
            lifetimePollution.text = "none"
        }
        else if infoSwitch.selectedSegmentIndex == 1{
            efficiencyRatio.text = "$220"
            upfrontCost.text = "10.8"
            lifetimeCost.text = "$488"
            lifetimeSavings.text = "534 kwh"
            lifetimePollution.text = "822 lb. CO2"
        }
    }
    

    override func viewDidLoad() {
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
