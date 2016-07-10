//
//  Contact.swift
//  Contacts
//
//  Created by Jordan Harvey-Morgan on 7/10/16.
//  Copyright © 2016 Jordan Harvey-Morgan. All rights reserved.
//

import UIKit

class Contact: NSObject {
    
    // name
    var name: String?
    var phoneNumber: String?
    
    // init function, not required because both variables are optionals
    init(name: String? = nil, phoneNumber: String? = nil) {
        self.name = name
        self.phoneNumber = phoneNumber
        // inherit everything from NSObject parent class
        super.init()
    }
    

}
