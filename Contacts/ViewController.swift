//
//  ViewController.swift
//  Contacts
//
//  Created by Jordan Harvey-Morgan on 7/9/16.
//  Copyright © 2016 Jordan Harvey-Morgan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //name and phone
    var detailViewName: String!
    var detailViewPhone: String!
    
    // contact name
    @IBOutlet weak var contactName: UILabel!
    
    // contact phone number
    @IBOutlet weak var contactPhoneNumber: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // detail view load
        contactName.text = detailViewName
        contactPhoneNumber.text = detailViewPhone
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

