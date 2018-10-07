//
//  ingredienteTableViewCell.swift
//  MyMoney
//
//  Created by Guilhermy William Andrade on 05/10/18.
//  Copyright © 2018 Guilhermy William. All rights reserved.
//

import UIKit

class ingredienteTableViewCell: UITableViewCell {
    @IBOutlet weak var ingredientName: UILabel!
    @IBOutlet weak var precoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
