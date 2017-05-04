//
//  FeedService.swift
//  PpaRooGram
//
//  Created by jungwan jin on 2017. 5. 1..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import Alamofire
import ObjectMapper

struct FeedService {
    
    static func feed(completion: @escaping (DataResponse<Feed>) -> Void) {
        let urlString: String = "http://localhost:8000/api/posts"
        
        Alamofire.request(urlString)
            .validate(statusCode: 200..<400)
            .responseJSON { response in
                let response: DataResponse<Feed> = response.flatMap { json in
                    if let feed = Mapper<Feed>().map(JSONObject: json) {
                        return .success(feed)
                    } else {
                        return .failure(MappingError(from: json, to: Feed.self))
                    }
                }
                completion(response)
        }
    }
}
