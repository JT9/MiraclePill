//
//  ViewController.swift
//  MiraclePill
//
//  Created by C T on 10/8/17.
//  Copyright © 2017 ASU. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerButton: UIButton!
    
    let states = [ "Alabama",
                  "Alaska",
                  "Arizona",
                  "Arkansas",
                  "California",
                  "Colorado",
                  "Connecticut",
                  "Delaware",
                  "Florida",
                  "Georgia",
                  "Hawaii",
                  "Idaho",
                  "Illinois",
                  "Indiana",
                  "Iowa",
                  "Kansas",
                  "Kentucky",
                  "Louisiana",
                  "Maine",
                  "Maryland",
                  "Massachusetts",
                  "Michigan",
                  "Minnesota",
                  "Mississippi",
                  "Missouri",
                  "Montana",
                  "Nebraska",
                  "Nevada",
                  "New Hampshire",
                  "New Jersey",
                  "New Mexico",
                  "New York",
                  "North Carolina",
                  "North Dakota",
                  "Ohio",
                  "Oklahoma",
                  "Oregon",
                  "Pennsylvania",
                  "Rhode Island",
                  "South Carolina",
                  "South Dakota",
                  "Tennessee",
                  "Texas",
                  "Utah",
                  "Vermont",
                  "Virginia",
                  "Washington",
                  "West Virginia",
                  "Wisconsin",
                  "Wyoming"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateButtonPressed(_ sender: Any) {
        //Not hidden anymore
        statePicker.isHidden = false
    }
    
    //How many components (columns)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //How many rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    //Title for each row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    //When you select a row
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerButton.setTitle(states[row], for: UIControlState.normal)
        //Hides picker after selecting
        statePicker.isHidden = true
    }

}

