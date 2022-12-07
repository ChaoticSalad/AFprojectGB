//
//  Session.swift
//  VKprojectGB
//
//  Created by Олег Черников on 27.11.2022.
//

import Foundation

class Session{
    
    static let shared = Session()
    
    private init(){}
    
    var token: String = ""
    var id: Int = 0
    
    func getToken(){
        self.token = UUID().uuidString
    }
}
