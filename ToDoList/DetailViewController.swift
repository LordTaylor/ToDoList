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
    var itemTitle:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
    }
    
    func setData(_ item:String){
        itemTitle = item
        self.title = itemTitle
    }
}
