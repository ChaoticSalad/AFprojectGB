//
//  VKDataViewController.swift
//  VKprojectGB
//
//  Created by Олег Черников on 01.12.2022.
//

import UIKit

class VKDataViewController: UIViewController {

    let service = VKSevice()
    private var responseFriendVK: ResponseUsersVK?
    private var responseGroupVK: ResponseGroupsVK?
    private var responsePhotosVK: ResponsePhotosVK?
    
    @IBOutlet weak var searchGroupsTestField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func loadFriends(_ sender: Any) {
        print("friends")
        loadFriendsObj()
//        service.loadFriends(method: "friends.get", token: Session.shared.token, id: Session.shared.id)
    }
    @IBAction func loadWallPhotos(_ sender: Any) {
        print("photos")
        loadPhotosObj()
//        service.loadWallPhotos(method: "photos.get", token: Session.shared.token, id: Session.shared.id)
    }
    @IBAction func loadGroups(_ sender: Any) {
        print("groups")
        loadGroupsObj()
//        service.loadGroups(method: "groups.get", token: Session.shared.token, id: Session.shared.id)
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
    
    func loadFriendsObj(){
        service.loadAndSerializeFriends(method: "friends.get", token: Session.shared.token, id: Session.shared.id){ [weak self] result in
            switch result{
            case .success(let responseVK):
                    DispatchQueue.main.async {
                        self?.responseFriendVK = responseVK
                        for user in responseVK.response.items{
                            print("\n\(user.id) and \(user.photo)")
                        }
                    }
            case .failure(let error):
                    print(error)
            }
        }
    }
    
    func loadGroupsObj(){
        service.loadAndSerializeGroups(method: "groups.get", token: Session.shared.token, id: Session.shared.id){ [weak self] result in
            switch result{
            case .success(let responseVK):
                    DispatchQueue.main.async {
                        self?.responseGroupVK = responseVK
                        for group in responseVK.response.items{
                            print("\n\(group.id) and \(group.name)")
                        }
                    }
            case .failure(let error):
                    print(error)
            }
        }
    }
    
    func loadPhotosObj(){
        service.loadAndSerializePhotos(method: "photos.get", token: Session.shared.token, id: Session.shared.id){ [weak self] result in
            switch result{
            case .success(let responseVK):
                    DispatchQueue.main.async {
                        self?.responsePhotosVK = responseVK
                        for photo in responseVK.response.items{
                            print("\n\(photo.id) and \(photo.album_id)")
                        }
                    }
            case .failure(let error):
                    print(error)
            }
        }
    }
}
