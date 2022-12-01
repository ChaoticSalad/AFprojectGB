//
//  VKDataViewController.swift
//  VKprojectGB
//
//  Created by Олег Черников on 01.12.2022.
//

import UIKit

class VKDataViewController: UIViewController {

    let service = VKSevice()
    
    @IBOutlet weak var searchGroupsTestField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func loadFriends(_ sender: Any) {
        print("friends")
        service.loadFriends(method: "friends.get", token: Session.shared.token, id: Session.shared.id)
    }
    @IBAction func loadWallPhotos(_ sender: Any) {
        print("photos")
        service.loadWallPhotos(method: "photos.get", token: Session.shared.token, id: Session.shared.id)
    }
    @IBAction func loadGroups(_ sender: Any) {
            print("groups")
            service.loadGroups(method: "groups.get", token: Session.shared.token, id: Session.shared.id)
        
    }
    @IBAction func searchGroups(_ sender: Any) {
        if (searchGroupsTestField.text != ""){
            print("search groups")
            service.searchGroups(method: "groups.search", token: Session.shared.token, q: searchGroupsTestField.text!)
        }
        else{
            print("textempty")
        }
    }
}
