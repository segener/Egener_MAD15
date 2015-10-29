//
//  ViewController.swift
//  Midterm
//
//  Created by Sarah Egener on 10/29/15.
//  Copyright (c) 2015 TAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var commuteMiles: UITextField!
    @IBOutlet weak var commuteSwitch: UISwitch!
    @IBOutlet weak var gasSlider: UISlider!
    @IBOutlet weak var transportControl: UISegmentedControl!
    @IBOutlet weak var commuteButon: UIButton!
    @IBOutlet weak var totalcommuteTime: UILabel!
    @IBOutlet weak var gastoPurchase: UILabel!
    @IBOutlet weak var transportImage: UIImageView!
    @IBOutlet weak var numberLabel: UILabel!
    
    
    @IBAction func changeNumber(sender: UISlider) {
        let fontSize=sender.value
        numberLabel.text=String(format: "%.0f", fontSize)
        let fontSizeCGFloat=CGFloat(fontSize)
        numberLabel.font=UIFont.systemFontOfSize(fontSizeCGFloat)
    }
    
    
    @IBAction func chooseTransport(sender: UISegmentedControl) {
        if transportControl.selectedSegmentIndex == 0{
            transportImage.image=UIImage(named:"car")
        }
        else if transportControl.selectedSegmentIndex == 1{
            transportImage.image=UIImage(named:"bus")
        }
        else if transportControl.selectedSegmentIndex == 2{
            transportImage.image=UIImage(named:"bike")
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func commuteTime(){
        let distance = (commuteMiles.text as NSString).floatValue
        let speed = 20.floatValue
        let milesPerGallon = 24.floatValue
        let time = distance/speed
        let gallons = milesPerGallon/distance
        totalcommuteTime.text = String(stringInterpolationSegment: time)
        gastoPurchase.text = String(stringInterpolationSegment: gallons)
        
        if distance > 50{
            //create a UIAlertController object
            let alert = UIAlertController(title:"Hi there", message: "Your distance is greater than 50, make sure you get some snacks and music!", preferredStyle: UIAlertControllerStyle.Alert)
            //create a UIAlertAction object for the button
            let cancelAction=UIAlertAction(title:"Cancel", style:UIAlertActionStyle.Cancel, handler:nil)
            alert.addAction(cancelAction)
            //^adds the alert action to the alert object^
            let okAction=UIAlertAction(title:"OK", style: UIAlertActionStyle.Default, handler:nil)
            alert.addAction(okAction)
            presentViewController(alert, animated: true, completion: nil)
        }

    }
    
    
    @IBAction func commuteButton(sender: UIButton) {
        commuteTime()
    }
    
    
    func textFieldDidEndEditing(textField: UITextField) {
        commuteTime()
    }
    
    @IBAction func unwindSegue (segue:UIStoryboardSegue){
    }
    
    
    @IBAction func handlePan(sender: UIPanGestureRecognizer) {
        let translation = sender.translationInView(view)
        sender.view!.center = CGPoint(x: sender.view!.center.x + translation.x, y:sender.view!.center.y + translation.y)
        sender.setTranslation(CGPointZero, inView: view)
        
        //MOVE AROUND
        if sender.state == UIGestureRecognizerState.Ended {
            let velocity = sender.velocityInView(self.view)
            let magnitude = sqrt((velocity.x * velocity.x) + (velocity.y * velocity.y))
            let slideMultiplier = magnitude / 200
            let slideFactor = 0.1 * slideMultiplier
            var finalPoint = CGPoint(x:sender.view!.center.x + (velocity.x * slideFactor), y:sender.view!.center.y + (velocity.y * slideFactor))
            finalPoint.x = min(max(finalPoint.x, 0), self.view.bounds.size.width)
            finalPoint.y = min(max(finalPoint.y, 0), self.view.bounds.size.width)
            
            UIView.animateWithDuration(Double(slideFactor * 2), delay:0, options: UIViewAnimationOptions.CurveEaseOut, animations: {sender.view!.center = finalPoint}, completion: nil)
        }
    }
    

    @IBAction func handlePinch(sender: UIPinchGestureRecognizer) {
        sender.view!.transform = CGAffineTransformScale(sender.view!.transform, sender.scale, sender.scale)
        sender.scale=1
    }
    
    @IBAction func handleRotate(sender: UIRotationGestureRecognizer) {
        sender.view!.transform = CGAffineTransformRotate(sender.view!.transform, sender.rotation)
        sender.rotation=0

    }
    
    
    //GESTURES AT SAME TIME
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }

    override func viewDidLoad() {
        commuteMiles.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

