//
//  ListViewController.swift
//  ToDoList
//
//  Created by Jaroslaw Krawczyk on 03/08/2019.
//  Copyright © 2019 Jaroslaw Krawczyk. All rights reserved.
//

import Foundation
import UIKit

var list = ["first task","second task","third task","forth task"]

class ListViewController :UIViewController ,UITableViewDataSource{
    
    let tableView = UITableView()
    var safeArea = UILayoutGuide()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        safeArea = view.layoutMarginsGuide
        addNavigationButton()
        setupList()
    }
    
    
    private func addNavigationButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: UIBarButtonItem.SystemItem.add
            , target: self, action: #selector(addNewItemClick))
    }
    
    private func setupList(){
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: safeArea.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    @objc func addNewItemClick(){
        navigationController?.pushViewController(AddItemViewController(), animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
    }
    //        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
    //            if editingStyle == UITableViewCell.EditingStyle.delete{
    //                list.remove(at: indexPath.row)
    //                myTabView.reloadData()
    //            }
    //        }
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
}
