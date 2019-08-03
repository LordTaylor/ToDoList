//
//  AddItemViewController.swift
//  ToDoList
//
//  Created by Jaroslaw Krawczyk on 03/08/2019.
//  Copyright © 2019 Jaroslaw Krawczyk. All rights reserved.
//

import Foundation
import UIKit

class AddItemViewController : UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
    }
    
    @objc func addItemClick(){
        navigationController?.popViewController(animated: true)
        
    }
    
    func addButtonToView(){
        let addButton = UIButton()
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.addTarget(self, action: #selector(AddItemViewController.addItemClick), for: .touchUpInside)
        addButton.setTitle("Add to List", for: .normal)
        view.addSubview(addButton)
        
        let horizontalCenter = NSLayoutConstraint(item: addButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0)
        let verticalCenter = NSLayoutConstraint(item: addButton, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0)
        let width = NSLayoutConstraint(item: addButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1.0, constant: 100)
        let height = NSLayoutConstraint(item: addButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1.0, constant: 75)
        let constraints:[NSLayoutConstraint]=[horizontalCenter,verticalCenter,width,height]
        NSLayoutConstraint.activate(constraints)
        
    }
}
