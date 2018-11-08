//
//  PhotosCollection.swift
//  Codable and JSON
//
//  Created by Dale Musser on 11/6/18.
//  Copyright © 2018 Tech Innovator. All rights reserved.
//
// https://developer.apple.com/documentation/foundation/archives_and_serialization/encoding_and_decoding_custom_types
// https://hackernoon.com/everything-about-codable-in-swift-4-97d0e18a2999

import Foundation

struct PhotoCollection: Codable {
    var status: String
    var photosPath: String
    var photos: [Photo]
    
    enum CodingKeys: String, CodingKey {
        case status
        case photosPath = "photos_path"
        case photos
    }
}

struct Photo: Codable {
    var image: String
    var title: String
    var description: String
    var latitude: Double
    var longitude: Double
    var date: String
}
