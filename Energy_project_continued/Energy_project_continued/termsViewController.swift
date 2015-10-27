//
//  termsViewController.swift
//  Energy_project_continued
//
//  Created by Sarah Egener on 10/25/15.
//  Copyright (c) 2015 TAM. All rights reserved.
//

import UIKit

class termsViewController: UIViewController {
    
    @IBOutlet weak var efficiencyButton: UIButton!
    @IBOutlet weak var upfrontButton: UIButton!
    @IBOutlet weak var lifetimeButton: UIButton!
    @IBOutlet weak var savingsButton: UIButton!
    @IBOutlet weak var pollutionButton: UIButton!
    @IBOutlet weak var explanationImage: UIImageView!
    @IBOutlet weak var explanationLabel: UILabel!

    
    @IBAction func explanationButton(sender: UIButton) {
        if sender.tag == 1{
            explanationLabel.text = "the ratio of a heating or cooling system's output, per hour, in British thermal units to the input in watts, used to measure the system's efficiency."
            explanationImage.image=UIImage(named:"efficiency")
        }
        if sender.tag == 2{
            explanationLabel.text = "expenses that are charged at the beginning of a purchase, right when appliance is received."
            explanationImage.image=UIImage(named:"upfrontcost")
        }
        if sender.tag == 3{
            explanationLabel.text = "the total of all costs relating to a good over its expected lifetime in addition to its upfront cost, typically in the form of maintenance or bills."
            explanationImage.image=UIImage(named:"lifecost")
        }
        if sender.tag == 4{
            explanationLabel.text = "when products are more efficient, they can get jobs done with less energy to do it. this is the amount of energy that is saved over the course of a goods whole lifetime with the energy saved added up over time."
            explanationImage.image=UIImage(named:"lifeEsavings")
        }
        if sender.tag == 5{
            explanationLabel.text = "when less energy is being used over time, less pollution is also being emitted becasuse it takes less fuel to run the product. so this is the amount of total pollution avoided over the course of the good's whole lifetime."
            explanationImage.image=UIImage(named:"lifepollution")
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
