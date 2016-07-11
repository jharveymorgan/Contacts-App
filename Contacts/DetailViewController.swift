//
//  DetailViewController.swift
//  Contacts
//
//  Created by Jordan Harvey-Morgan on 7/10/16.
//  Copyright © 2016 Jordan Harvey-Morgan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {
    
    // name and phone number
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var phoneNumberField: UITextField!
    var contact: Contact?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // assign delegate proberties of both text fields to self (DetailViewController), which is also a TextFieldDelegate
        self.nameField.delegate = self
        self.phoneNumberField.delegate = self

        // add contact information to labels
        if let contact = self.contact {
            if let name = contact.name {
                nameField.text = name
            }
            if let phoneNumber = contact.phoneNumber {
                phoneNumberField.text = phoneNumber
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // when user is done typing, get input
    // optionals in case only one of them is entered
    func textFieldDidEndEditing(textField: UITextField) {
        if textField == self.nameField {
            self.contact?.name = textField.text
        } else if textField == self.phoneNumberField {
            self.contact?.phoneNumber = textField.text
        }
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
