//
//  VKDataListController.swift
//  VKprojectGB
//
//  Created by Олег Черников on 07.12.2022.
//

import Foundation
import UIKit


class VKDataListController: UITableViewController {
    
    var responseVK: ResponseUsersVK?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return responseVK?.response.items.count ?? 0
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "VKCell", for: indexPath) as? VKCell else {
        preconditionFailure("Cell is nil")
    }

        // Configure the cell...
            
        cell.idLabel.text = "\(responseVK?.response.items[indexPath.row].id ?? 0)"
        cell.addInfoLabel.text = responseVK?.response.items[indexPath.row].photo
            
        return cell
    }
}
