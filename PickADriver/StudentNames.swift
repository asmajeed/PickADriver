//
//  StudentNames.swift
//  PickADriver
//
//  Created by Sam Burrell on 1/23/18.
//  Copyright © 2018 Amer M. All rights reserved.
//

import UIKit

class StudentNames: Object {
    dynamic var name0 = String()
    dynamic var name1 = String()
    dynamic var name2 = String()
    dynamic var name3 = String()
    dynamic var name4 = String()
    dynamic var name5 = String()
    dynamic var name6 = String()
    dynamic var name7 = String()
    dynamic var name8 = String()
    dynamic var name9 = String()
    
    convenience init(name0: String, name1: String, name2: String, name3: String, name4: String, name5: String, name6: String, name7: String, name8: String, name9: String){
        self.init()
        self.name0 = name0
        self.name1 = name1
        self.name2 = name2
        self.name3 = name3
        self.name4 = name4
        self.name5 = name5
        self.name6 = name6
        self.name7 = name7
        self.name8 = name8
        self.name9 = name9
    }
}
