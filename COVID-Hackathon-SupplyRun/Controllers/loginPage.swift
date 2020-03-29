//
//  loginPage.swift
//  COVID-Hackathon-SupplyRun
//
//  Created by Vignesh Krishnan on 3/28/20.
//  Copyright © 2020 Vignesh Krishnan. All rights reserved.
//

import Foundation
import UIKit
import AWSAuthCore
import AWSAuthUI

class loginPage : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        showSignIn();
    }
    
    func showSignIn() {
        if !AWSSignInManager.sharedInstance().isLoggedIn {
           AWSAuthUIViewController
             .presentViewController(with: self.navigationController!,
                  configuration: nil,
                  completionHandler: { (provider: AWSSignInProvider, error: Error?) in
                     if error != nil {
                         print("Error occurred: \(String(describing: error))")
                     } else {
                        // add code for going straight to roleViewContoller
                     }
                  })
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "loginPage" {
            _ = segue.destination as! roleViewContoller
        }
        
    }
}
