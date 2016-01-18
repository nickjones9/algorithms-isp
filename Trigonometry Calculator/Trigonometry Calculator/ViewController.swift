//  Nick Jonwa
//  ViewController.swift
//  Trigonometry Calculator
//
//  Created by Nick Jones on 2015-12-11.
//  Copyright © 2015 Nick Jones. All rights reserved.
//

import UIKit
import Darwin

let π = Float(M_PI)

var angleA = false                                                 // Naming boolean variables to show which measurnments are declaired
var angleB = false
var sidea = false
var sideb = false
var sidec = false

extension String {                                                 // Creating an extention to let textfield be named as a float value
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
        var C = Float(90.0)
        var a = SideaTextField.text!.floatValue                    // Naming the Sides and giving them inserted values
        var b = SidebTextField.text!.floatValue
        var c = SidecTextField.text!.floatValue
        
        print (A)                                                  // Printing values in computer
        print (B)
        print (C)
        print (a)
        print (b)
        print (c)
        
        
        if (A > 0){                                                // Checking which measurnments have been declaired
            print("A has been declaired")
            angleA = true
        } else {
            print ("A was not declaired")
        }
        
        if (B > 0){
            print("B has been declaired")
            angleB = true
        } else {
            print ("B was not declaired")
        }
        
        if (a > 0){
            print("a has been declaired")
            sidea = true
        } else {
            print ("a was not declaired")
        }
        
        if (b > 0){
            print("b has been declaired")
            sideb = true
        } else {
            print ("b was not declaired")
        }
        
        if (c > 0){
            print("c has been declaired")
            sidec = true
        } else {
            print ("c was not declaired")
        }
        
        if sidea == true && angleA == true {                       // Possible routes to take
            print ("Taking route Aa")
            B = 180 - (C + A)
            print (B)
            b = a / tan(A)
            print (b)
//            b = b * π / 180.0 // This is the dec to rad convertion that doesnt work on final products, needs to be used in actual equation.
            c = sqrt((a*a) + (b*b))
            print (c)
            
        }
        
        if sideb == true && angleA == true {
            print ("Taking route Ab")
            B = 180 - (C + A)
            print (B)
            a = b * tan(A)
            print (a)
            c = sqrt((a*a) + (b*b))
            print (c)

        }
        
        if sidec == true && angleA == true {
            print ("Taking route Ac")
            B = 180 - (C + A)
            print (B)
            a = c * sin(A)
            print (a)
            b = sqrt((c*c) - (a*a))
            print (b)

        }
        
        if sidea == true && angleB == true {
            print ("Taking route Ba")
            A = 180 - (C + B)
            print (A)
            b = a * tan(B)
            print (b)
            c = sqrt((a*a) + (b*b))
            print (c)

        }
        
        if sideb == true && angleB == true {
            print ("Taking route Bb")
            A = 180 - (C + B)
            print (A)
            a = b / tan(B)
            print (a)
            c = sqrt((a*a) + (b*b))
            print (c)
        }
        
        if sidec == true && angleB == true {
            print ("Taking route Bc")
            A = 180 - (C + B)
            print (A)
            b = c * sin(B)
            print (b)
            a = sqrt((c*c) - (b*b))
            print (a)
        }
        
        if sidea == true && sideb == true {
            print ("Taking route ab")
            c = sqrt ((a*a) + (b*b))
            print (c)
            B = sin(b / c)
            print (B)
            A = sin(a / c)
            print(A)
        }
        
        if sideb == true && sidec == true {
            print ("Taking route bc")
            a = sqrt ((c*c) - (b*b))
            print (a)
            B = sin(b / c)
            print (B)
            A = sin(a / c)
            print(A)
            
        }
        
        if sidea == true && sidec == true {
            print ("Taking route ac")
            b = sqrt ((c*c) - (a*a))
            print (b)
            B = sin(b / c)
            print (B)
            A = sin(a / c)
            print(A)
            
        }
        
        // Alert
        let alertController = UIAlertController(title: "Triangle Calculated", message: "Calculations...", preferredStyle: UIAlertControllerStyle.Alert)
                alertController.addAction(UIAlertAction(title: "Clear", style: UIAlertActionStyle.Default) {
                  UIAlertAction in
                    self.alertClear()
        
                })
        
                alertController.addAction(UIAlertAction(title: "Edit", style: UIAlertActionStyle.Default) {
                UIAlertAction in
                    self.alertEdit()
    
                    })
        
        
        
                self.presentViewController(alertController, animated: true, completion: nil)
        
            }
    
        func alertClear() {                                        // Clear Button Function
                print("alert CLEAR")
            }
    
        func alertEdit() {                                         // Edit Button Function
            print("alert EDIT")
            }
        
    }

