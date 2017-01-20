//
//  PokedexTableVC.swift
//  PokeFinder
//
//  Created by Mike Sevilla on 1/19/17.
//  Copyright © 2017 Mike Sevilla. All rights reserved.
//

import UIKit

protocol PokedexTableVCDelegate {
    func receivedPokeID(pokeIDFromTable: Int)
}

class PokedexTableVC: UITableViewController {
    
    var delegate: PokedexTableVCDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return pokemon.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PokedexCell", for: indexPath) as? PokedexCell {
            
            cell.configCell(pokeID: indexPath.row)
            
            return cell
        } else {
            return PokedexCell()
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let del = delegate {
            del.receivedPokeID(pokeIDFromTable: indexPath.row + 1)
            dismiss(animated: true, completion: nil)
        }
    }
}
