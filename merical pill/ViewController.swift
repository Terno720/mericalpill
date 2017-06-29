//
//  ViewController.swift
//  merical pill
//
//  Created by Lucas Letourneau on 2017-06-26.
//  Copyright © 2017 Lucas Letourneau. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var postalCode: UILabel!
    @IBOutlet weak var postalCodeTextFeild: UITextField!
   
    @IBOutlet weak var provincePicker: UIPickerView!
    
    @IBOutlet weak var provinceButton: UIButton!
    
    let province = ["AB", "BC", "mb", "NB", "NL", "NS"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        provincePicker.dataSource = self
        provincePicker.delegate = self
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func provinceButtonPressed(_ sender: Any) {
        
        provincePicker.isHidden = false
        postalCode.isHidden = true
        postalCodeTextFeild.isHidden = true
        
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return province.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return province[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        provinceButton.setTitle(province[row], for: UIControlState.normal)
        provincePicker.isHidden = true
        postalCode.isHidden = false 
        postalCodeTextFeild.isHidden = false
    }

}

