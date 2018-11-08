//
//  PhotoCollectionLoader.swift
//  Codable and JSON
//
//  Created by Dale Musser on 11/7/18.
//  Copyright © 2018 Tech Innovator. All rights reserved.
//

import Foundation

class PhotoCollectionLoader {
    
    class func load(jsonFileName: String) -> PhotoCollection? {
        var photoCollection: PhotoCollection?
        let jsonDecoder = JSONDecoder()
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
           let jsonData = try? Data(contentsOf: jsonFileUrl) {
                photoCollection = try? jsonDecoder.decode(PhotoCollection.self, from: jsonData)
        }
        
        return photoCollection
    }
}
