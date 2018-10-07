//
//  InicioViewController.swift
//  MyMoney
//
//  Created by Guilhermy William Andrade on 07/10/18.
//  Copyright © 2018 Guilhermy William. All rights reserved.
//

import UIKit

class InicioViewController: UIViewController {

   
    @IBOutlet weak var precoLeiteLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func precoLeite(_ sender: Any) {
        let alert = UIAlertController(title: "Atualizar preço do leite", message: "Insira o preço do leite", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel, handler: nil))
        
        alert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Insira o preço aqui"
            textField.keyboardType = UIKeyboardType.decimalPad
        })
        
        alert.addAction(UIAlertAction(title: "Salvar", style: .default, handler: { action in
            
            if let name = alert.textFields?.first?.text {
                print("Preço: \(name)")
               
            
                
                self.precoLeiteLabel.text = "\(name)"
            }
        }))
        
        self.present(alert, animated: true)
    }
   

}
