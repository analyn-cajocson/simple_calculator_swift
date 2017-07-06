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

    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
        label.text = label.text!  + String(sender.tag-1)
        numberOnScreen = Double(label.text!)!
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

