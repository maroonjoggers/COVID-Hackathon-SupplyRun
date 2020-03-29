//
//  roleViewController.swift
//  COVID-Hackathon-SupplyRun
//
//  Created by Praneet Kedari on 3/28/20.
//  Copyright © 2020 Vignesh Krishnan. All rights reserved.
//

import UIKit

class roleViewContoller : UIViewController {
    

    @IBAction func volunteerPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func recipientPressed(_ sender: UIButton) {
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "volunteerPage" {
            _ = segue.destination as! volunteerPage
        }
        
        if segue.identifier == "recipientPage" {
            _ = segue.destination as! recipientPage
        }
        
    }
    
    
    
}
