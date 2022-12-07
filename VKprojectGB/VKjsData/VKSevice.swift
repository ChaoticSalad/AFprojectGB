//
//  VKSevice.swift
//  VKprojectGB
//
//  Created by Олег Черников on 01.12.2022.
//

import Foundation

final class VKSevice{
    
    private func makeURL(token: String, method: String) -> URLComponents{
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "api.vk.com"
        urlComponents.path = "/method/\(method)"
        urlComponents.queryItems = [
            URLQueryItem(name: "access_token", value: "\(token)"),
            URLQueryItem(name: "v", value: "5.131")
        ]
        
        return urlComponents
    }
    
    private func initiateRequest(urlComponents: URLComponents){
        
        guard let url = urlComponents.url else {return}
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request){ data, response, error in
            if let error = error {
                print(error)
            }
            guard let data = data else{
                return
            }
            do{
                let result = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                print(result)
            } catch{
                print(error)
            }
        }.resume()
    }
    
    func loadFriends(method: String, token: String, id: Int){
        
        var urlComponents = makeURL(token: token, method: method)
        urlComponents.queryItems?.insert(URLQueryItem(name: "fields", value: "photo_100"), at: 0)
        urlComponents.queryItems?.insert(URLQueryItem(name: "user_id", value: "\(id)"), at: 0)
        initiateRequest(urlComponents: urlComponents)
        
    }
    
    func loadWallPhotos(method: String, token: String, id: Int){
        
        var urlComponents = makeURL(token: token, method: method)
        urlComponents.queryItems?.insert(URLQueryItem(name: "album_id", value: "wall"), at: 0)
        urlComponents.queryItems?.insert(URLQueryItem(name: "owner_id", value: "\(id)"), at: 0)
        initiateRequest(urlComponents: urlComponents)
        
    }
    
    func loadGroups(method: String, token: String, id: Int){
        
        var urlComponents = makeURL(token: token, method: method)
        urlComponents.queryItems?.insert(URLQueryItem(name: "user_id", value: "\(id)"), at: 0)
        initiateRequest(urlComponents: urlComponents)
        
    }
    
    func searchGroups(method: String, token: String, q: String){
        
        var urlComponents = makeURL(token: token, method: method)
        urlComponents.queryItems?.insert(URLQueryItem(name: "q", value: "\(q)"), at: 0)
        initiateRequest(urlComponents: urlComponents)
        
    }
    
    func loadAndSerializeFriends(method: String, token: String, id: Int, completion: @escaping((Result<ResponseUsersVK, Error>) -> ())){
        var urlComponents = makeURL(token: token, method: method)
        urlComponents.queryItems?.insert(URLQueryItem(name: "fields", value: "photo_100"), at: 0)
        urlComponents.queryItems?.insert(URLQueryItem(name: "user_id", value: "\(id)"), at: 0)
        
        guard let url = urlComponents.url else {return}
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request){ data, response, error in
            if let error = error {
                print(error)
            }
            guard let data = data else{
                return
            }
            let decoder = JSONDecoder()
            do{
                let result = try decoder.decode(ResponseUsersVK.self, from: data)
                completion(.success(result))
            } catch{
                completion(.failure(error))
            }
        }.resume()
    }
    
    func loadAndSerializeGroups(method: String, token: String, id: Int, completion: @escaping((Result<ResponseGroupsVK, Error>) -> ())){
        var urlComponents = makeURL(token: token, method: method)
        urlComponents.queryItems?.insert(URLQueryItem(name: "user_id", value: "\(id)"), at: 0)
        urlComponents.queryItems?.insert(URLQueryItem(name: "extended", value: "true"), at: 0)
        
        guard let url = urlComponents.url else {return}
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request){ data, response, error in
            if let error = error {
                print(error)
            }
            guard let data = data else{
                return
            }
            let decoder = JSONDecoder()
            do{
                let result = try decoder.decode(ResponseGroupsVK.self, from: data)
                completion(.success(result))
            } catch{
                completion(.failure(error))
            }
        }.resume()
    }
    
    func loadAndSerializePhotos(method: String, token: String, id: Int, completion: @escaping((Result<ResponsePhotosVK, Error>) -> ())){
        var urlComponents = makeURL(token: token, method: method)
        urlComponents.queryItems?.insert(URLQueryItem(name: "album_id", value: "wall"), at: 0)
        urlComponents.queryItems?.insert(URLQueryItem(name: "owner_id", value: "\(id)"), at: 0)
        
        guard let url = urlComponents.url else {return}
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request){ data, response, error in
            if let error = error {
                print(error)
            }
            guard let data = data else{
                return
            }
            let decoder = JSONDecoder()
            do{
                let result = try decoder.decode(ResponsePhotosVK.self, from: data)
                completion(.success(result))
            } catch{
                completion(.failure(error))
            }
        }.resume()
    }
    
}
