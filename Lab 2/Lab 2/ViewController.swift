//
//  ViewController.swift
//  Lab 2
//
//  Created by Sarah Egener on 9/15/15.
//  Copyright (c) 2015 TAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tellurideImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var imageControl: UISegmentedControl!
    
    @IBAction func changeInfo(sender: UISegmentedControl) {
       updateImage()
       updateCaps()
    }
    
    func updateImage(){
        if imageControl.selectedSegmentIndex==0 {
            titleLabel.text="Downtown Telluride during summer"
            tellurideImage.image=UIImage(named:"summer")
        }
        else if imageControl.selectedSegmentIndex==1 {
            titleLabel.text="Downtown Telluride during winter"
            tellurideImage.image=UIImage(named:"winter")
        }
    }
    
    
    @IBOutlet weak var capitalSwitch: UISwitch!
    
    func updateCaps(){
        if capitalSwitch.on{
            titleLabel.text=titleLabel.text?.uppercaseString
        } else {
            titleLabel.text=titleLabel.text?.lowercaseString
        }
    }
    
    
    
    @IBAction func updateFont(sender: UISwitch) {
       updateCaps()
    }
    
    
    @IBOutlet weak var fontSizeLabel: UILabel!
    
    
    @IBAction func changeFontSize(sender: UISlider) {
        let fontSize=sender.value
        fontSizeLabel.text=String(format: "%.0f", fontSize)
        let fontSizeCGFloat=CGFloat(fontSize)
        titleLabel.font=UIFont.systemFontOfSize(fontSizeCGFloat)
    }
    
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

     override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

