//
//  CadastrarAnimalViewController.swift
//  MyMoney
//
//  Created by Guilhermy William Andrade on 04/10/18.
//  Copyright © 2018 Guilhermy William. All rights reserved.
//

import UIKit
import SQLite3

class CadastrarAnimalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Cadastrar animal"
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var pesoLabel: UILabel!
    @IBOutlet weak var pesoLeiteLabel: UILabel!
    @IBOutlet weak var gorduraLabel: UILabel!
    @IBOutlet weak var ordemPartoLabel: UILabel!
    
    @IBAction func pesoMais(_ sender: Any) {
        var peso = Int(self.pesoLabel.text!)!
        peso = peso + 10
        self.pesoLabel.text = "\(peso)"

    }
    
    @IBAction func pesoMenos(_ sender: Any) {
        var peso = Int(self.pesoLabel.text!)!
        peso = peso - 10
        self.pesoLabel.text = "\(peso)"
    }
    @IBAction func pesoLeiteMais(_ sender: Any) {
        var peso = Int(self.pesoLeiteLabel.text!)!
        peso = peso + 5
        self.pesoLeiteLabel.text = "\(peso)"
        
    }
    
    @IBAction func pesoLeiteMenos(_ sender: Any) {
        var peso = Int(self.pesoLeiteLabel.text!)!
        if(peso>5){
            peso = peso - 5
            self.pesoLeiteLabel.text = "\(peso)"
        }
        
    }
    @IBAction func gorduraMais(_ sender: Any) {
        var peso = Double(self.gorduraLabel.text!)!
        if (peso<4){
            peso = peso + 0.5
            self.gorduraLabel.text = "\(peso)"
        }
    }
    
    @IBAction func gorduraMenos(_ sender: Any) {
        var peso = Double(self.gorduraLabel.text!)!
        if(peso>0){
            peso = peso - 0.5
            self.gorduraLabel.text = "\(peso)"
        }
    }
    @IBAction func ordemPartoMais(_ sender: Any) {
        var peso = Int(self.ordemPartoLabel.text!)!
        peso = peso + 1
        self.ordemPartoLabel.text = "\(peso)"
        
    }
    
    @IBAction func ordemPartoMenos(_ sender: Any) {
        var peso = Int(self.ordemPartoLabel.text!)!
        if(peso>1){
            peso = peso - 1
            self.ordemPartoLabel.text = "\(peso)"
        }
        
    }

    @IBAction func adicionarAction(_ sender: Any) {
        let alert = UIAlertController(title: "Cadastrado com sucesso", message: "O Animal foi adicionado", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
                
                
            }}))
        self.present(alert, animated: true, completion: nil)
    }
    

}
