//
//  PostStore.swift
//  Woof&Wags
//
//  Created by Mohamed Atallah on 23/03/2023.
//

import Foundation


class PostStore {
    
    static let shared =  PostStore()
    
    private init() { }
    
    func getPost() {
        guard let url = URL(string: DummyAPI.baseURLString + "post") else { return }
        print(url)
        var request = URLRequest(url: url)
        request.setValue(DummyAPI.appID, forHTTPHeaderField: "app-id")
        print(request)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            let decoder = JSONDecoder()
            do {
                let postData = try decoder.decode(PostData.self, from: data!)
                print(postData.data)
            } catch {
                print(error)
            }
        }
        
        task.resume()
        
    }
}


struct PostData: Decodable {
    var data: [Post]
}

