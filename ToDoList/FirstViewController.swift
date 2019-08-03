//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Jaroslaw Krawczyk on 02/08/2019.
//  Copyright © 2019 Jaroslaw Krawczyk. All rights reserved.
//
import Foundation
import UIKit

var list = ["sss","ss","asd","asdddd"]

class FirstViewController:  UINavigationController {
    
    let myTabView: UITableView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        
        // Do any additional setup after loading the view.
    }
    

//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return(list.count)
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
//        cell.textLabel?.text = list[indexPath.row]
//
//        return (cell)
//    }
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
//        if editingStyle == UITableViewCell.EditingStyle.delete{
//            list.remove(at: indexPath.row)
//            myTabView.reloadData()
//        }
//    }
//    override func viewDidAppear(_ animated: Bool) {
//        myTabView.reloadData()
//    }
    
}

