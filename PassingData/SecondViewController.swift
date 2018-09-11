//
//  SecondViewController.swift
//  PassingData
//
//  Created by Vu Duong on 9/11/18.
//  Copyright © 2018 Vu Duong. All rights reserved.
//

import UIKit

protocol CanRecieve {
    func dataRecieved(data: String)
}


class SecondViewController: UIViewController, UITableViewDelegate {
    
    var delegate : CanRecieve?
    
    var info = ""
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textLabel.text = info
        
    }
    
    @IBAction func secondButtonPressed(_ sender: Any) {
        
    delegate?.dataRecieved(data: textField.text!)
        dismiss(animated: true, completion: nil)
        
    }
    

}
