//
//  Scene2ViewController.swift
//  favorites
//
//  Created by Sarah Egener on 10/20/15.
//  Copyright (c) 2015 TAM. All rights reserved.
//

import UIKit

class Scene2ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var userBook: UITextField!
    @IBOutlet weak var userAuthor: UITextField!
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true 
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "doneFavs"{
            var scene1ViewController:ViewController = segue.destinationViewController as! ViewController
            if userBook.text.isEmpty == false{
                scene1ViewController.user.favBook=userBook.text
            }
            if userAuthor.text.isEmpty == false{
                scene1ViewController.user.favAuthor=userAuthor.text 
            }
        }
    }

    override func viewDidLoad() {
        userBook.delegate=self
        userAuthor.delegate=self 
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
