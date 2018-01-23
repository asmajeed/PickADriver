//
//  ClassesTableViewController.swift
//  PickADriver
//
//  Created by Petar Lumovic on 1/22/18.
//  Copyright © 2018 Amer M. All rights reserved.
//

import UIKit

class ClassesTableViewController: UITableViewController

{
    var classes = [String]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.title = "Classes"
    }

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return classes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ClassesCell", for: indexPath)
        return cell
    }
    @IBAction func addClass(_ sender: UIBarButtonItem)
    {
        let alert = UIAlertController(title: "add class", message: nil, preferredStyle: .alert)
        
        alert.addTextField
            {
                (classTextField) in classTextField.placeholder = "add class"
         }
        
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(cancelAction)
        
        let addAction = UIAlertAction(title: "Add", style: .default)
        {
            (action) in
            
            let classTextField = alert.textFields?[0]
            
            
            self.classes.append(classesClass(Name: (classTextField?.text)!))
            
            self.tableView.reloadData()
        }
        
        alert.addAction(addAction)
        
        present(alert, animated: true, completion: nil)
    }
}
