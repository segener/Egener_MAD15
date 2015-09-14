//
//  ViewController.swift
//  Lab 1
//
//  Created by Sarah Egener on 9/11/15.
//  Copyright (c) 2015 TAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var RRimage: UIImageView!
    

    @IBOutlet weak var RRtext: UILabel!
    
    
    
    @IBAction func YouCan(sender: UIButton) {
        if sender.tag == 1{
            RRimage.image=UIImage(named: "RR_music.png")
            RRtext.text="experience live music!"
        }
            
        else if sender.tag == 2{
            RRimage.image=UIImage(named: "RR_yoga.png")
            RRtext.text="do yoga!"
        }
        else if sender.tag == 3{
            RRimage.image=UIImage(named: "RR_movie.png")
            RRtext.text="watch movies!"
        }
        else if sender.tag == 4{
            RRimage.image=UIImage(named: "RR_view.png")
            RRtext.text="enjoy the view!"
        }
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

