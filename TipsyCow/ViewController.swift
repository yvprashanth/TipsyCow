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
        let tipAmount = (tipAmountSelected.titleForSegment(at: tipAmountSelected.selectedSegmentIndex)!)
        let tipAmountWithoutPercentage = tipAmount.characters.index(of: "%")
        let tipAmountWithoutPercentageDigit = String(tipAmount.characters.prefix(upTo: tipAmountWithoutPercentage!))
        display!.text = String(Double(tipTextField.text!)! * Double(tipAmountWithoutPercentageDigit)!)
    }
    
    @IBOutlet weak var tipAmountSelected: UISegmentedControl!
    @IBOutlet weak var tipTextField: UITextField!
}
