//
//  IngredientesTableViewController.swift
//  MyMoney
//
//  Created by Guilhermy William Andrade on 05/10/18.
//  Copyright © 2018 Guilhermy William. All rights reserved.
//

import UIKit

class IngredientesTableViewController: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    var ingredientsName = ["Farelo de soja","Milho em grão","Sal comum","Cana-de-açucar","Farelo de algodão","Melaço","Silagem de milho","Uréia"]
    var ingredientsPrice = ["0,90","1,09","0,36","0,99","1,23","1,25","1,44","0,75"]
  
    
    
    /*override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 2
    }*/

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return ingredientsName.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ingredienteTableViewCell
        cell.ingredientName.text = ingredientsName[indexPath.row]
        cell.precoLabel.text = ingredientsPrice[indexPath.row]
        
    
        return cell
    }
    

    

}
