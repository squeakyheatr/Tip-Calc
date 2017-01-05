//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Robert Mitchell on 1/4/17.
//  Copyright © 2017 Robert Mitchell. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController{
    
    @IBOutlet var tipDefault1: UILabel!
    @IBOutlet var tipDefault2: UILabel!
    @IBOutlet var tipDefault3: UILabel!
    @IBOutlet var tipSlider1: UISlider!
    @IBOutlet var tipSlider2: UISlider!
    @IBOutlet var tipSlider3: UISlider!
    let defaults = UserDefaults.standard

    override func viewDidAppear(_ animated: Bool) {
        tipSlider1.value = Float(defaults.integer(forKey: "Seg1"))
        tipSlider2.value = Float(defaults.integer(forKey: "Seg2"))
        tipSlider3.value = Float(defaults.integer(forKey: "Seg3"))
        tipDefault1.text = "\(defaults.integer(forKey: "Seg1"))"
        tipDefault2.text = "\(defaults.integer(forKey: "Seg2"))"
        tipDefault3.text = "\(defaults.integer(forKey: "Seg3"))"
    }
    
    @IBAction func TipSlider1ValueChanged(_ sender: Any) {
        let intval = Int(tipSlider1.value)
        defaults.set(intval, forKey: "Seg1")
        tipDefault1.text = "\(intval)"
        
    }
    
    @IBAction func TipSlider2ValueChanged(_ sender: Any) {
        let intval2 = Int(tipSlider2.value)
        defaults.set(intval2, forKey: "Seg2")
        tipDefault2.text = "\(intval2)"
        
    }
    
    @IBAction func TipSlider3ValueChanged(_ sender: Any) {
        let intval3 = Int(tipSlider3.value)
        defaults.set(intval3, forKey: "Seg3")
        tipDefault3.text = "\(intval3)"
    }
}
