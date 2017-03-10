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
    
    override func tableView(_: UITableView, cellForRowAtIndexPath indexPath: indexPath) -> UITableViewCell {
        // need to implement this
        // call indexPath = indexPath[row]
        return UITableViewCell
    }
    
}
