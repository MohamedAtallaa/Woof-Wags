//
//  NetworkManager.swift
//  Woof&Wags
//
//  Created by Mohamed Atallah on 23/03/2023.
//

import Foundation

enum EndPoint: String {
    case getPosts = "post"
}

struct DummyAPI {
    
    static let baseURLString = "https://dummyapi.io/data/v1/"
    static let appID = "641c4e52c2992722ee48cc80"
    static var getPostURL: URL { DummyURL() }
    
    private static func DummyURL() -> URL {
        var components = URLComponents(string: baseURLString)!
        var queryItems = [URLQueryItem]()
        
        let baseParams = [
            "app-id": appID
        ]
        
        for (key, value) in baseParams {
            let item = URLQueryItem(name: key, value: value)
            queryItems.append(item)
        }
        
        components.queryItems = queryItems
        
        print(components.url!)
        return components.url!
    }
    
}
