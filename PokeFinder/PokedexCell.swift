//
//  PokedexCell.swift
//  PokeFinder
//
//  Created by Mike Sevilla on 1/19/17.
//  Copyright © 2017 Mike Sevilla. All rights reserved.
//

import Foundation

class PokedexCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel?
    
    func configCell(pokeID: Int) {
        name?.text = "\(pokeID + 1). \( pokemon[pokeID].capitalized)"
    }
}
