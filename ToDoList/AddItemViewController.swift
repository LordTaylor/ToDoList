//
//  AddItemViewController.swift
//  ToDoList
//
//  Created by Jaroslaw Krawczyk on 03/08/2019.
//  Copyright © 2019 Jaroslaw Krawczyk. All rights reserved.
//

import Foundation
import UIKit

class AddItemViewController : UIViewController, UITextFieldDelegate{
    var safeArea = UILayoutGuide()
    let addButton = UIButton()
    public let todoItemText = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        
        safeArea = view.layoutMarginsGuide
        
        setupTextField()
        setupButtonToView()
    }
    
    @objc func addItemClick(){
        if (todoItemText.text! != ""){
            list.append(todoItemText.text!)
            navigationController?.popViewController(animated: true)
        }
    }
    
    func setupTextField(){
        
        todoItemText.translatesAutoresizingMaskIntoConstraints = false
        todoItemText.backgroundColor = .white
        todoItemText.delegate = self
        view.addSubview(todoItemText)
        NSLayoutConstraint.activate([
            todoItemText.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 100.0),
            todoItemText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 1.0),
            todoItemText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 1.0),
            ])
        
        
    }
    
    func setupButtonToView(){
        
        addButton.addTarget(self, action: #selector(AddItemViewController.addItemClick), for: .touchUpInside)
        addButton.setTitle("Add to List", for: .normal)
        addButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(addButton)
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: todoItemText.bottomAnchor),
            addButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            addButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ])
        
        
    }
}
