//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Jaroslaw Krawczyk on 02/08/2019.
//  Copyright © 2019 Jaroslaw Krawczyk. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet var itemToAdd: UITextView!
    
    
    @IBAction func addItem(_ sender: Any) {
        
        if(itemToAdd.text != ""){
            list.append(itemToAdd.text)
            itemToAdd.text = ""
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

