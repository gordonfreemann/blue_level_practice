//
//  Feed.swift
//  PpaRooGram
//
//  Created by jungwan jin on 2017. 5. 1..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import ObjectMapper
import Alamofire

struct Feed: Mappable {
    
    var posts: [Post]?
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        self.posts <- map["posts"]
    }
}
