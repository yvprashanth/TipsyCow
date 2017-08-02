//
//  ViewController.swift
//  TipsyCow
//
//  Created by PrashMaya2 on 7/31/17.
//  Copyright © 2017 Prashanth Yerramilli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel?
    @IBOutlet weak var sliderValue: UISlider!
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let tipValueInDigit = Int(tipTextField.text!)
        display!.text = String(Float(tipValueInDigit!) + Float(tipValueInDigit!) * sender.value)
    }
    
    @IBAction func tipEnteredAction(_ sender: UITextField){
        display!.text = String(Float(sender.text!)! + Float(sender.text!)! * sliderValue.value)
    }
    
    @IBOutlet weak var tipTextField: UITextField!
}

