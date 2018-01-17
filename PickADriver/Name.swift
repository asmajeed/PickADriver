//
//  Name.swift
//  PickADriver
//
//  Created by Elizabeth on 1/17/18.
//  Copyright © 2018 Amer M. All rights reserved.
//

import UIKit

class Name: NSObject
{
    var name: String
    
    init?(name: String)
    {
        
        // The name must not be empty
        guard !name.isEmpty else
        {
            return nil
        }
        
        self.name = name
    }
}
