//
//  DetailViewController.swift
//  ToDoList
//
//  Created by Jaroslaw Krawczyk on 03/08/2019.
//  Copyright © 2019 Jaroslaw Krawczyk. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController : UIViewController{
    var itemTitle:String=""
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        setupTextView()
    }
    
    
    func setupTextView(){
        let todoItemText = UITextView()
        todoItemText.translatesAutoresizingMaskIntoConstraints = false
        todoItemText.backgroundColor = .white
        todoItemText.text = itemTitle
        view.addSubview(todoItemText)
        NSLayoutConstraint.activate([
            todoItemText.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 100.0),
            todoItemText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 1.0),
            todoItemText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 1.0),
            ])
        
        
    }
    
    func setData(_ item:String){
        itemTitle = item
        self.title = itemTitle
    }
}
