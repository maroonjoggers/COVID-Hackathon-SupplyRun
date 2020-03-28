//
//  recipientPage.swift
//  COVID-Hackathon-SupplyRun
//
//  Created by Praneet Kedari on 3/28/20.
//  Copyright © 2020 Vignesh Krishnan. All rights reserved.
//

import UIKit

class recipientPage : UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var requestButton: UIButton!
    
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.picker.delegate = self
        self.picker.dataSource = self
        
        pickerData = ["Groceries", "Food Delivery", "Pet Care"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        requestButton.setTitle("Make request for " + pickerData[row], for: UIControl.State.normal)
    }
    
    @IBAction func sendRequest(_ sender: UIButton) {
        //enter data base stuff in here
    }
    
    
}
