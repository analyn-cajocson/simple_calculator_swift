//
//  ViewController.swift
//  calculator
//
//  Created by Analyn Cajocson on 06/07/2017.
//  Copyright © 2017 AnalynCajocson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen:Double = 0;
    var previousNumber:Double = 0;
    var performingMath = false
    var operation = 0;

    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
        
        if performingMath == true {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performingMath = false
        } else {
            label.text = label.text!  + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
        
        }
        
        
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16 {
            
            previousNumber = Double(label.text!)!
            
            switch (sender.tag){
            case 12: // Divide
                label.text = "/"
            case 13: // Multiply
                label.text = "x"
            case 14: // Minus
                label.text = "-"
            case 15: // Add
                label.text = "+"
           
            default:
                label.text = label.text
            }
            
            operation = sender.tag
            performingMath = true;
        
        } else if sender.tag == 16 {
            
            switch (operation ){
            case 12: // Divide
                label.text = String(previousNumber / numberOnScreen)
            case 13: // Multiply
                label.text = String(previousNumber * numberOnScreen)
            case 14: // Minus
                label.text = String(previousNumber - numberOnScreen)
            case 15: // Add
                label.text = String(previousNumber + numberOnScreen)
                
            default:
                label.text = label.text
            }
        
        } else if sender.tag == 11 {
            label.text = "";
            previousNumber = 0;
            numberOnScreen = 0;
            operation = 0;
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

