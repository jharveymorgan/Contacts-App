//
//  DetailViewController.swift
//  Contacts
//
//  Created by Jordan Harvey-Morgan on 7/10/16.
//  Copyright © 2016 Jordan Harvey-Morgan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // name and phone number
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    var contact: Contact?

    override func viewDidLoad() {
        super.viewDidLoad()

        // add contact information to labels
        if let contact = self.contact {
            if let name = contact.name {
                nameLabel.text = name
            }
            if let phoneNumber = contact.phoneNumber {
                phoneNumberLabel.text = phoneNumber
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
