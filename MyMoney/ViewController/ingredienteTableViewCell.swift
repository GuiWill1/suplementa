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
    @IBOutlet  weak  var btnCheckBox : UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        btnCheckBox.setImage(UIImage(named:"Checkmarkempty"), for: .normal)
        btnCheckBox.setImage(UIImage(named:"Checkmark"), for: .selected)    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction  func  checkMarkTapped (_sender : UIButton) {
        UIView.animate(withDuration: 0.1, delay: 0.1, options: .curveLinear, animations: {
            _sender.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            
        }) { (success) in
            UIView.animate(withDuration: 0.1, delay: 0.1, options: .curveLinear, animations: {
                _sender.isSelected = !_sender.isSelected
                _sender.transform = .identity
            }, completion: nil)
        }
    }

}
