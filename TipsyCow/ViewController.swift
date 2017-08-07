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
    
    @IBAction func tipChangedAction(_ sender: UISegmentedControl) {
    }
   
    @IBAction func tipEnteredAction(_ sender: UITextField){

        display!.text = String(Double(tipTextField.text!)! * Double(tipAmountSelected.titleForSegment(at: tipAmountSelected.selectedSegmentIndex)!)!)
    }
    
    @IBOutlet weak var tipAmountSelected: UISegmentedControl!
    @IBOutlet weak var tipTextField: UITextField!
}

