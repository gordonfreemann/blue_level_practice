//
//  PostService.swift
//  Alalala
//
//  Created by jungwan jin on 2017. 4. 19..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import Alamofire
import ObjectMapper

struct PostService {
    
    static func create(
        text: String,
        image: String,
        completion: @escaping (String) -> Void) {
        
        let urlStirng = "http://localhost:8000/api/posts"
        let parameters: [String:Any] = ["text":text,"image":image]
        let header: HTTPHeaders = ["Accept":"application/json",]
        
        Alamofire.request(urlStirng, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: header)
            .validate(statusCode: 200..<400)
            .response {response in
                if let dataString = String(data: response.data!, encoding: String.Encoding.utf8) {
                    completion(dataString)
                }
                if response.error != nil {
                    print("error")
                }
            }
    }
    static func getAll(completion: @escaping([[String:Any]]) -> Void) {
        Alamofire.request("http://localhost:8000/api/posts")
            .validate(statusCode: 200..<400)
            .responseJSON { response in
                if let jsonData = response.result.value as? [String:AnyObject] {
                    completion(jsonData["posts"] as! [[String:Any]])
                } else {
                    print("error")
                }
            }
    }
    
    static func delete(id: String, completion: @escaping(String) -> Void) {
        let urlString = "http://localhost:8000/api/posts/\(id)"
        Alamofire.request(urlString, method: .delete)
            .validate(statusCode: 200..<400)
            .response { response in
                if let dataString = String(data: response.data!, encoding: String.Encoding.utf8) {
                    completion(dataString)
                }
                if response.error != nil {
                    print("error")
                }
        }
    }
}
