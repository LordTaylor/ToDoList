//
//  ListViewController.swift
//  ToDoList
//
//  Created by Jaroslaw Krawczyk on 03/08/2019.
//  Copyright © 2019 Jaroslaw Krawczyk. All rights reserved.
//

import Foundation
import UIKit

class ListViewController :UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
            navigationItem.rightBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: UIBarButtonItem.SystemItem.add
                , target: self, action: #selector(addNewItemClick))
    }
    
    @objc func addNewItemClick(){
        navigationController?.pushViewController(AddItemViewController(), animated: true)
    }
    
}
