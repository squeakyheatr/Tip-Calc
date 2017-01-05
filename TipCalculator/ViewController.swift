//
//  ViewController.swift
//  TipCalculator
//
//  Created by Robert Mitchell on 1/3/17.
//  Copyright © 2017 Robert Mitchell. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet var billField: UITextField!
    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var tipControl: UISegmentedControl!
    let settings = SettingsViewController()
    var num1 = Int()
    var num2 = Int()
    var num3 = Int()
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        num1 = settings.defaults.integer(forKey: "Seg1")
        num2 = settings.defaults.integer(forKey: "Seg2")
        num3 = settings.defaults.integer(forKey: "Seg3")
        tipControl.setTitle("\(num1)", forSegmentAt: 0)
        tipControl.setTitle("\(num2)", forSegmentAt: 1)
        tipControl.setTitle("\(num3)", forSegmentAt: 2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
        
    }

    @IBAction func calculateTip(_ sender: AnyObject) {
        
        let newnum1 = Double(num1) * 0.01
        let newnum2 = Double(num2) * 0.01
        let newnum3 = Double(num3) * 0.01
        
        let tipPercentages = [newnum1, newnum2, newnum3]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * Double(tipPercentages[tipControl.selectedSegmentIndex])
        let total = bill + tip        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
    }
    
    
}

