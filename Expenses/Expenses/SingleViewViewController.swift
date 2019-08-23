//
//  SingleViewViewController.swift
//  Expenses
//
//  Created by Brian Robinson on 8/22/19.
//  Copyright © 2019 Brian Robinson. All rights reserved.
//

import Foundation
import UIKit

class SingleViewViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    struct expenses {
        var title: String
        var amount: Double
        var date: Date
    }
    
    /*
    Dinner
    $32.50
    June 1, 2018 18:30
    
    Office Supplies
    $59.34
    May 30, 2018 12:17
    
    Uber
    $16.23
    May 30, 2018 11:43
    
    Coffee
    $3.95
    May 29, 2018 8:45
    */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expenseCell", for: indexPath)
        
        let expense = expenses[indexPath.row]
        
        cell.textLabel?.text = expenses[indexPath.row].name
    }
    
    override func viewDidLoad() {
        super .viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return
    }
}
