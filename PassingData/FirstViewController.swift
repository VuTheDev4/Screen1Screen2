//
//  ViewController.swift
//  PassingData
//
//  Created by Vu Duong on 9/11/18.
//  Copyright © 2018 Vu Duong. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CanRecieve {
    
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonPressed(_ sender: Any) {
        performSegue(withIdentifier: "passingTheDataSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "passingTheDataSegue" {
           let secondVC = segue.destination as! SecondViewController
            secondVC.info = textField.text!
            secondVC.delegate = self
        }
    }
    
    func dataRecieved(data: String) {
        textLabel.text = data
    }
    
}

