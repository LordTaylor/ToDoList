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
    var safeArea = UILayoutGuide()
    let addButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
    
        safeArea = view.layoutMarginsGuide
        setupButtonToView()
//        setupTextField()
    }
    
    @objc func addItemClick(){
        navigationController?.popViewController(animated: true)
    }
    
    func setupTextField(){
        let todoItemText = UITextField()
        view.addSubview(todoItemText)
        todoItemText.translatesAutoresizingMaskIntoConstraints = false
        todoItemText.topAnchor.constraint(equalTo: safeArea.bottomAnchor).isActive = true
        todoItemText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50.0).isActive = true
        todoItemText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 50.0).isActive = true
        todoItemText.bottomAnchor.constraint(equalTo: addButton.topAnchor, constant: 20.0).isActive = true
        
        
    }
    
    func setupButtonToView(){
        
        addButton.addTarget(self, action: #selector(AddItemViewController.addItemClick), for: .touchUpInside)
        addButton.setTitle("Add to List", for: .normal)
        view.addSubview(addButton)
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.topAnchor.constraint(equalTo: safeArea.bottomAnchor).isActive = true
        addButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        addButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        addButton.bottomAnchor.constraint(equalTo: view.topAnchor).isActive = true

        
    }
}
