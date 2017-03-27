//
//  FactTableViewController.swift
//  TableViewFinal
//
//  Created by James Campagno on 6/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class FactTableViewController: UITableViewController {
    
    var planet: Planet!
    let factCellIdentifier = "factCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = planet.name.capitalized
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planet.facts.count
    }
    
    override func tableView(_: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: factCellIdentifier, for: indexPath) as! FactTableViewCell
        let currentFact = planet.facts[indexPath.row]
        
        cell.factTextView.text = currentFact
        
        return cell
    }
    
}
