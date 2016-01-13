//  Nick Jonwa
//  ViewController.swift
//  Trigonometry Calculator
//
//  Created by Nick Jones on 2015-12-11.
//  Copyright © 2015 Nick Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var AngleATextField: UITextField!               // Connecting storyboard Angle textfields to code
    @IBOutlet weak var AngleBTextField: UITextField!

    @IBOutlet weak var SideaTextField: UITextField!                // Connecting storyboard Side textfields to code
    @IBOutlet weak var SidebTextField: UITextField!
    @IBOutlet weak var SidecTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func CalculateButton(sender: AnyObject) {            // Connecting Button to code. When it is pressed...
        
        print ("Calculate Botton Pressed")                         // Print message into computer
        
        var A = AngleATextField.text                               // Naming the Angles and giving them inserted values
        var B = AngleBTextField.text
        var C = 90
        var a = SideaTextField.text                                // Naming the Sides and giving them inserted values
        var b = SidebTextField.text
        var c = SidecTextField.text
        
        print (A)                                                  // Printing values in computer
        print (B)
        print (C)
        print (a)
        print (b)
        print (c)
        
//        if (A > 0){
//            print("A has value")
//        }
    }
}

