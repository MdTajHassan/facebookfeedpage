//
//  ViewController.swift
//  FacebookMessegeFeed(Task)
//
//  Created by mehtab alam on 06/05/2020.
//  Copyright © 2020 taj hassan. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    
    @IBOutlet weak var tableView: UITableView!
    
    //OBJECT CREATION FOR CLASS MODEL
    var FBModelObject = [FBModel]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("gdfh")
        
        getDataFromServer()
 
    }
 
}
