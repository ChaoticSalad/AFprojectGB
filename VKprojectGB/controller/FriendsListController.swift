//
//  FriendsListController.swift
//  VKprojectGB
//
//  Created by Олег Черников on 14.04.2022.
//

import UIKit

class FriendsListController: UITableViewController {
    
    let friends = [
        Friend(image: UIImage.init(systemName: "circle.dashed"), name: "First"),
        Friend(image: UIImage.init(systemName: "minus.circle"), name: "Second"),
        Friend(image: UIImage.init(systemName: "xmark.circle"), name: "Third"),
        Friend(image: UIImage.init(systemName: "arrowtriangle.left.circle"), name: "Fourth"),
        Friend(image: UIImage.init(systemName: "b.circle"), name: "Fifth")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

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
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendCell else {
            preconditionFailure("Cell is nil")
        }

        // Configure the cell...
        
        cell.friendNameLabel.text = friends[indexPath.row].name
        cell.friendImageView.image = friends[indexPath.row].image
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail",
        let destination = segue.destination as? FriendViewController,
        let indexPath = tableView.indexPathForSelectedRow{
            destination.friendImg = friends[indexPath.row].image
            destination.title = friends[indexPath.row].name
            }
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
