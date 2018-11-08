//
//  PhotoSet.swift
//  Codable and JSON
//
//  Created by Dale Musser on 11/6/18.
//  Copyright © 2018 Tech Innovator. All rights reserved.
//
// https://developer.apple.com/documentation/foundation/archives_and_serialization/encoding_and_decoding_custom_types
// https://hackernoon.com/everything-about-codable-in-swift-4-97d0e18a2999
// https://useyourloaf.com/blog/swift-codable-with-custom-dates/
// https://en.wikipedia.org/wiki/ISO_8601

import Foundation

struct PhotoSet: Codable {
    var status: String
    var photosPath: String
    var photos: [PhotoItem]
    
    enum CodingKeys: String, CodingKey {
        case status
        case photosPath = "photos_path"
        case photos
    }
}

struct PhotoItem: Codable {
    var imageName: String
    var title: String
    var description: String
    var latitude: Double
    var longitude: Double
    var date: Date
    
    enum CodingKeys: String, CodingKey {
        case imageName = "image"
        case title
        case description
        case latitude
        case longitude
        case date
    }
}
