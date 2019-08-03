//
//  ListViewController.swift
//  ToDoList
//
//  Created by Jaroslaw Krawczyk on 03/08/2019.
//  Copyright © 2019 Jaroslaw Krawczyk. All rights reserved.
//

import Foundation
import UIKit



class ListViewController :UIViewController {
    
    let tableView = UITableView()
    var safeArea = UILayoutGuide()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        safeArea = view.layoutMarginsGuide
        addNavigationButton()
        setupList()
        tableView.dataSource = self
        tableView.delegate = self
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
        let addVC = AddItemViewController()
        navigationController?.pushViewController(addVC, animated: true)
    }
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
}
extension UIViewController:UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = list[indexPath.row]
        cell.target(forAction: #selector (openDetailView), withSender: .none)
        cell.accessoryType = .detailDisclosureButton
        return cell
    }

    
    @objc func openDetailView(_ index:Int){
        let detailView = DetailViewController()
        detailView.setData(list[index])
        navigationController?.pushViewController(detailView, animated: true)
    }
//    func viewDidAppear(_ animated: Bool) {
//        tableView.reloadData()
//    }
    
}

extension UIViewController :UITableViewDelegate{
    public func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        openDetailView(indexPath.row)
    }
    
}
