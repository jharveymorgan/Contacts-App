//
//  ContactsTableViewController.swift
//  Contacts
//
//  Created by Jordan Harvey-Morgan on 7/9/16.
//  Copyright © 2016 Jordan Harvey-Morgan. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    
    // dictionary to hold contact information
    //var contactInfo: [String: String] = [:]
    //var contact = ["Jordan Morgan": "313 588-7811"]
    
    //let jordan = contactInfo(name: "Jordan", phoneNumber: "313-588-7811")
    //contactInfo["Jordan"] = "313-588-7811"
    //contact["Fran Morgan"] = "313-585-1203"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    // get contact information
    func contact() -> (name: [String], phoneNumber: [String]) { //[String: String] {
        
        var contactInfo: [String: String] = [:]
        contactInfo["Jordan Morgan"] = "313-588-7811"
        contactInfo["Fran Morgan"] = "313-585-1203"
        
        let names = [String](contactInfo.keys)
        let phone = [String](contactInfo.values)
        
        return (names, phone)
        
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> (UITableViewCell) {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)

        // Configure the cell...
        
        //cell.textLabel?.text = "test"
        
        // get contacts
        let contactInfo = contact()
        
        // get names of contacts
        for name in contactInfo.name {
            cell.textLabel?.text = name
        }

        return cell
    }
    
    // whenever a contact is tapped, segue to detail view
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "openDetailView" {
            // variable for detailView
            let detailViewController = segue.destinationViewController as! ViewController
            
            let info = contact()
            for nameInfo in info.name {
                detailViewController.detailViewName = nameInfo
            }
            
            for phoneInfo in info.phoneNumber {
                detailViewController.detailViewPhone = phoneInfo
            }

        }
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
