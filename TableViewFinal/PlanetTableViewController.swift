//
//  PlanetTableViewController.swift
//  TableViewFinal
//
//  Created by James Campagno on 6/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class PlanetTableViewController: UITableViewController {
    
    let planetCellIdentifier = "planetCell"
    var planets: [Planet] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generatePlanetInfo()
    }
    
    func generatePlanetInfo() {
        
        let earthFacts = [
            "Earth is the only planet not named after a god.",
            "Earth has a powerful magnetic field.",
            "The Earth was once believed to be the center of the universe."
        ]
        
        let marsFacts = [
            "Mars and Eath have approximately the same landmass.",
            "Mars is home to the tallest mountain in the solar system.",
            "Pieces of Mars have fallen to Earth."
        ]
        
        let earth = Planet(name: "Earth", numberOfMoons: 1, fullOrbit: 365.26, facts: earthFacts)
        planets.append(earth)
    
        let mars = Planet(name: "Mars", numberOfMoons: 2, fullOrbit: 687.0, facts: marsFacts)
        planets.append(mars)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! FactTableViewController
        
        if let indexPath = tableView.indexPathForSelectedRow {
            let chosenPlanet = planets[indexPath.row]
            destinationVC.planet = chosenPlanet
        }
        
    }
    
}
