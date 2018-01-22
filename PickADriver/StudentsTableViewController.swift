//
//  StudentsTableViewController.swift
//  PickADriver
//
//  Created by Petar Lumovic on 1/22/18.
//  Copyright © 2018 Amer M. All rights reserved.
//

import UIKit

class StudentsTableViewController: UITableViewController
{
    var students = [String]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.title = "Students"
    }

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return students.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StudentsCell", for: indexPath)
        return cell
    }

}
