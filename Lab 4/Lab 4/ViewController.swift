//
//  ViewController.swift
//  Lab 4
//
//  Created by Sarah Egener on 10/11/15.
//  Copyright (c) 2015 TAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let container = UIView()
    let yellowSquare = UIView()
    @IBOutlet weak var pinwheel: UIImageView!

    
    @IBAction func animateButtonTapped(sender: AnyObject) {
 

   
        UIView.animateWithDuration(2.0, animations: {
            self.pinwheel.transform = CGAffineTransformMakeRotation((180.0 * CGFloat(M_PI)) / 180.0)

        
        })
        

        let views = (frontView: self.yellowSquare, backView: self.yellowSquare)
        let transitionOptions = UIViewAnimationOptions.TransitionCurlUp
 
        
        UIView.transitionWithView(self.container, duration: 1.0, options: transitionOptions, animations: {
            views.frontView.removeFromSuperview()
            self.container.addSubview(views.backView)
            }, completion: { finished in
        })
 

        let ovalStartAngle = CGFloat(90.01 * M_PI/180)
        let ovalEndAngle = CGFloat(90 * M_PI/180)
        let ovalRect = CGRectMake(97.5, 58.5, 125, 125)
        
        
        let ovalPath = UIBezierPath()
        
        ovalPath.addArcWithCenter(CGPointMake(CGRectGetMidX(ovalRect), CGRectGetMidY(ovalRect)),
            radius: CGRectGetWidth(ovalRect) * (6/4),
            startAngle: ovalStartAngle,
            endAngle: ovalEndAngle, clockwise: true)
        
        let progressLine = CAShapeLayer()
        progressLine.path = ovalPath.CGPath
        progressLine.strokeColor = UIColor.greenColor().CGColor
        progressLine.fillColor = UIColor.clearColor().CGColor
        progressLine.lineWidth = 10.0
        progressLine.lineCap = kCALineCapRound
        
        // add the curve to the screen
        self.view.layer.addSublayer(progressLine)
        
        // create a basic animation that animates the value 'strokeEnd'
        // from 0.0 to 1.0 over 3.0 seconds
        let animateStrokeEnd = CABasicAnimation(keyPath: "strokeEnd")
        animateStrokeEnd.duration = 3.0
        animateStrokeEnd.fromValue = 0.0
        animateStrokeEnd.toValue = 1.0
        
        // add the animation
        progressLine.addAnimation(animateStrokeEnd, forKey: "animate stroke end animation")
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // set container frame and add to the screen
        self.container.frame = CGRect(x: 60, y: 60, width: 200, height: 200)
        self.view.addSubview(container)
        
        // set red square frame up
        self.yellowSquare.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
   
        // set background colors
        self.yellowSquare.backgroundColor = UIColor.yellowColor()
        self.yellowSquare.backgroundColor = UIColor.yellowColor()
        
        // for now just add the redSquare
        // we'll add blueSquare as part of the transition animation
        self.container.addSubview(self.yellowSquare)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

