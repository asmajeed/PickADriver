//
//  NameTableViewController.swift
//  PickADriver
//
//  Created by Elizabeth on 1/17/18.
//  Copyright © 2018 Amer M. All rights reserved.
//

import UIKit

class NameTableViewController: UITableViewController
{

    var names = [Name]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
          loadSampleNames()
        self.clearsSelectionOnViewWillAppear = false
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return names.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cellIdentifier = "NameTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? NameTableViewCell
        
        let name = names[indexPath.row]
        
        return cell!
        
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
        }
    }
    
 func loadSampleNames() {
        
      let name1 = Name(name: "Sam")
     let name2 = Name(name: "Petar")
       let name3 = Name(name: "Amer")
    let name4 = Name(name: "beth")
  
    
    names = [name1!, name2!, name3!, name4!]
    }


     

}
