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
}
