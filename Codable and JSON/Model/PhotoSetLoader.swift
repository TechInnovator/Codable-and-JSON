//
//  PhotoSetLoader.swift
//  Codable and JSON
//
//  Created by Dale Musser on 11/7/18.
//  Copyright © 2018 Tech Innovator. All rights reserved.
//

import Foundation

class PhotoSetLoader {
    
    class func load(jsonFileName: String) -> PhotoSet? {
        var photoSet: PhotoSet?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            photoSet = try? jsonDecoder.decode(PhotoSet.self, from: jsonData)
        }
        
        return photoSet
    }
}
