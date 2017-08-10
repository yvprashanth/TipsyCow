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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let stringValue = defaults.object(forKey: "segmentedControlValue")
        if stringValue != nil {
            tipAmountSelected.selectedSegmentIndex = stringValue as! Int
            calculateTotalBill()
        }
    }
    
    private func calculateTotalBill(){
        let tipAmount = (tipAmountSelected.titleForSegment(at: tipAmountSelected.selectedSegmentIndex)!)
        let tipAmountWithoutPercentage = tipAmount.characters.index(of: "%")
        let tipAmountWithoutPercentageDigit = String(tipAmount.characters.prefix(upTo: tipAmountWithoutPercentage!))
        
        display!.text = String(Double(tipTextField.text!)! + Double(tipTextField.text!)! * Double(tipAmountWithoutPercentageDigit)! / 100)
    }
    
    @IBAction func tipChangedAction(_ sender: UISegmentedControl) {
        calculateTotalBill()
        let defaults = UserDefaults.standard
        defaults.set(tipAmountSelected.selectedSegmentIndex, forKey: "segmentedControlValue")
        defaults.synchronize()
    }
   
    @IBAction func tipEnteredAction(_ sender: UITextField){
        calculateTotalBill()
    }
    
    @IBOutlet weak var tipAmountSelected: UISegmentedControl!
    @IBOutlet weak var tipTextField: UITextField!
}
