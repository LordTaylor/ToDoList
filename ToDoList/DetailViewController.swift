//
//  DetailViewController.swift
//  ToDoList
//
//  Created by Jaroslaw Krawczyk on 03/08/2019.
//  Copyright © 2019 Jaroslaw Krawczyk. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController : UIViewController,UITextViewDelegate{
    let todoItemText = UILabel()
    var itemTitle:String=""
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        setupTextView()
    }
    
    
    func setupTextView(){
        
        todoItemText.translatesAutoresizingMaskIntoConstraints = false
        todoItemText.sizeToFit()
        todoItemText.textAlignment = NSTextAlignment.center
        todoItemText.backgroundColor = .white
        todoItemText.textColor = .purple
        todoItemText.text = itemTitle
//        todoItemText.delegate = self
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
