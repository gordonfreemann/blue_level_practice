//
//  MappingError.swift
//  PpaRooGram
//
//  Created by jungwan jin on 2017. 5. 1..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

struct MappingError: Error, CustomStringConvertible {
    
    let description: String
    
    init(from: Any?, to: Any.Type) {
        self.description = "Failed to map \(from) to \(to)"
    }
}
