//
//  SettingsViewController.swift
//  TipsyCow
//
//  Created by PrashMaya2 on 8/9/17.
//  Copyright © 2017 Prashanth Yerramilli. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        let stringValue = defaults.object(forKey: "segmentedControlValue")
        innerViewSettingsDisplay.selectedSegmentIndex = stringValue as! Int
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func innerViewSettingsClick(_ sender: UISegmentedControl) {
        let defaults = UserDefaults.standard
        defaults.set(innerViewSettingsDisplay.selectedSegmentIndex, forKey: "segmentedControlValue")
        defaults.synchronize()
    }
    
    @IBOutlet weak var innerViewSettingsDisplay: UISegmentedControl!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
