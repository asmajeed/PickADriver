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
    var objects = [Any]()
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showStudents" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let object = objects[indexPath.row] as! StudentNames
                let controller = (segue.destination as! UINavigationController).topViewController as! StudentsTableViewController
               
                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }
    
}
