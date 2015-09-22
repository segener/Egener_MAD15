//
//  ViewController.swift
//  Lab 3
//
//  Created by Sarah Egener on 9/18/15.
//  Copyright (c) 2015 TAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var demandThen: UITextField!
    @IBOutlet weak var demandNow: UITextField!
    @IBOutlet weak var priceThen: UITextField!
    @IBOutlet weak var priceNow: UITextField!
    @IBOutlet weak var priceElasticity: UILabel!
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func updateElasticity(){
        let demand1 = (demandThen.text as NSString).floatValue
        let demand2 = (demandNow.text as NSString).floatValue
        let price1 = (priceThen.text as NSString).floatValue
        let price2 = (priceNow.text as NSString).floatValue
        let elasticity = ((demand1-demand2)/demand1)/((price1-price2)/price1)
        
        var currencyFormatter = NSNumberFormatter()
        currencyFormatter.numberStyle=NSNumberFormatterStyle.CurrencyStyle
        //priceThen.text=currencyFormatter.stringFromNumber(price1)
        //priceNow.text=currencyFormatter.stringFromNumber(price2)
    
    priceElasticity.text = String(stringInterpolationSegment: elasticity)
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        updateElasticity()
    }
    
    override func viewDidLoad() {
        demandThen.delegate=self
        demandNow.delegate=self
        priceThen.delegate=self
        priceNow.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

