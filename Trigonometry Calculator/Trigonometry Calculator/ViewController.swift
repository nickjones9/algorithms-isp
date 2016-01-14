//  Nick Jonwa
//  ViewController.swift
//  Trigonometry Calculator
//
//  Created by Nick Jones on 2015-12-11.
//  Copyright © 2015 Nick Jones. All rights reserved.
//

import UIKit

extension String {                                                 // Creating an extention to let textfield be named a float value
    var floatValue: Float {
        return (self as NSString).floatValue
    }
}

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
        
        var A = AngleATextField.text!.floatValue                   // Naming the Angles and giving them inserted values
        var B = AngleBTextField.text!.floatValue
        var C = 90
        var a = SideaTextField.text!.floatValue                    // Naming the Sides and giving them inserted values
        var b = SidebTextField.text!.floatValue
        var c = SidecTextField.text!.floatValue
        
//        print (A)                                                  // Printing values in computer
//        print (B)
//        print (C)
//        print (a)
//        print (b)
//        print (c)
        
        
        if (A > 0){
            print("A has been declaired")
        } else {
            print ("A was not declaired")
        }
        
        if (B > 0){
            print("B has been declaired")
        } else {
            print ("B was not declaired")
        }
        
        if (a > 0){
            print("a has been declaired")
        } else {
            print ("a was not declaired")
        }
        
        if (b > 0){
            print("b has been declaired")
        } else {
            print ("b was not declaired")
        }
        if (c > 0){
            print("c has been declaired")
        } else {
            print ("c was not declaired")
        }
        
    }
}

