//
//  volunteerPage.swift
//  COVID-Hackathon-SupplyRun
//
//  Created by Praneet Kedari on 3/28/20.
//  Copyright © 2020 Vignesh Krishnan. All rights reserved.
//

import Foundation
import UIKit

class volunteerPage : UIViewController {
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var db: Int?
    
    var requests: [Request] = [Request(task: "Get my groceries son")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self;
        tableView.delegate = self;
        
    }
}

extension volunteerPage: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return requests.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let request = requests[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"reusaebleCell", for: indexPath)
        cell.textLabel?.text = requests[indexPath.row].task
        return cell
    }
}

extension volunteerPage: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
