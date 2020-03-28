//
//  roleViewController.swift
//  COVID-Hackathon-SupplyRun
//
//  Created by Praneet Kedari on 3/28/20.
//  Copyright © 2020 Vignesh Krishnan. All rights reserved.
//

import UIKit

class roleViewContoller : UIViewController {
    
    override func viewDidLoad() {
        self.viewDidLoad();
    }

    
    @IBAction func volunteerPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "volunteerPage", sender: self)
    }
    
    @IBAction func recipientPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "recipientPage", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "volunteerPage" {
            let destinationVC = segue.destination as! volunteerPage
        }
        
        if segue.identifier == "recipientPage" {
            let destinationVC = segue.destination as! recipientPage
        }
        
    }
    
    
    
}
