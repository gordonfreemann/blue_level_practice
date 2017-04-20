//
//  Post.swift
//  Alalala
//
//  Created by jungwan jin on 2017. 4. 19..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import ObjectMapper

struct Post : Mappable {
    
    var text : String!
    var image : String!
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        self.text <- map["text"]
        self.image <- map["image"]
    }
    
}
