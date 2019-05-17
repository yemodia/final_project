//
//  CounselorsTableViewController.swift
//  Peer to Peer
//
//  Created by Yerim on 5/13/19.
//  Copyright © 2019 Yerim. All rights reserved.
//

import UIKit

class CounselorsTableViewController: UITableViewController {
    var freeBlock: String!
    let counselors = [Counselor(name: "Kwame Boamah", free:"A"), Counselor(name: "Nahum Besha", free: "A"), Counselor(name: "Stephen Randall", free: "A"), Counselor(name: "Joel Euceda Warner", free: "A"), Counselor(name: "Fer Velazquez", free: "A"), Counselor(name: "Sara Topchik", free: "A"), Counselor(name: "Donnie Harris", free: "A"), Counselor(name: "Scout Crooke", free: "A"), Counselor(name: "Myan Wang", free: "A"), Counselor(name: "Lara Conway", free: "A"), Counselor(name: "Natalie Norman", free: "A") ]
    override func viewDidLoad() {
        super.viewDidLoad()
            print(freeBlock)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       // print(counselors.count)
        return counselors.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Counselors", for: indexPath)

        // Configure the cell...

        cell.textLabel?.text = counselors[indexPath.row].name
        cell.detailTextLabel?.text = counselors[indexPath.row].free
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
