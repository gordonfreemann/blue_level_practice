//
//  CollectionViewController.swift
//  PpaRooGram
//
//  Created by jungwan jin on 2017. 4. 24..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import UIKit
import Alamofire

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    //let imagePicker = UIImagePickerController()
    //var pickImage = UIImage()
    
    // MARK: Properties
    fileprivate var posts: [Post] = []
    fileprivate var isLoading: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        self.fetchFeed()
    }
        
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.posts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let post = self.posts[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.configure(post: post, isMessageTrimmed: true)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let picDimension = self.view.frame.size.width
        return CGSize(width: picDimension, height: picDimension)
    }
    
    fileprivate func fetchFeed() {
        guard !self.isLoading else { return }
        self.isLoading = true
        
        FeedService.feed() { [weak self] response in
            guard let `self` = self else { return }
            self.isLoading = false
            
            switch response.result {
            case .success(let feed):
                let newPosts = feed.posts ?? []
                self.posts = newPosts
                self.collectionView.reloadData()
                
            case .failure(let error):
                print(error)
            }
        }
    }

    /*
    func createRecord() {
        
        let url = "http://localhost:8000/api/upload"
        
        Alamofire.upload(multipartFormData: {
            multipartFormData in
            
            if let imageData = UIImageJPEGRepresentation(self.pickImage, 0.6) {
                multipartFormData.append(imageData, withName: "image", fileName: "file.png", mimeType: "image/png")
            }
        }, to: url, method: .post, headers: nil, encodingCompletion: { encodingResult in
            switch encodingResult {
            case .success(let upload, _, _):
                upload.responseJSON { response in
                    let dict = (response.result.value) as! NSDictionary
                    let path = dict["ok"]!
                    //print(path)
                    // Add Headers
                    let headers = [
                        "Content-Type":"application/json; charset=utf-8",
                        ]
                    // JSON Body
                    let body: [String : Any] = [
                        "image": "\(path)",
                        "text": "test"
                    ]
                    // Fetch Request
                    Alamofire.request("http://localhost:8000/api/posts/", method: .post, parameters: body, encoding: JSONEncoding.default, headers: headers)
                        .validate(statusCode: 200..<300)
                        .responseJSON { response in
                            if (response.result.error == nil) {
                                debugPrint("HTTP Response Body: \(String(describing: response.data))")
                            }
                            else {
                                debugPrint("HTTP Request failed: \(String(describing: response.result.error))")
                            }
                    }
                }
            case .failure(let encodingError):
                print("encodingError")
            }
        })
    }
    */
    
//    func getAll() {
//        
//        var postsDicts = [[String: Any]]()
//        var getImagesData = Data()
//        
//        Alamofire.request("http://localhost:8000/api/posts/", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil)
//            .validate(statusCode: 200..<300)
//            .responseJSON { response in
//                if let bigDict = (response.result.value) as? [String : Any] {
//                    postsDicts = bigDict["posts"]! as! [[String : Any]]
//                }
//                
//                for postsDict in postsDicts {
//                    
//                            if let text = postsDict["text"] as? String {
//                                let records = Post(text: text, image: getImagesData)
//                                self.record.append(records)
//                                self.collectionView.reloadData()
//                                print(self.record)
//                            }
//                }
//            }
//    }
    
    
    
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
//            let image = info[UIImagePickerControllerOriginalImage] as! UIImage
//            pickImage = image
//            self.dismiss(animated: true, completion: nil)
//    }
//    
//    @IBAction func addImageBtn(_ sender: Any) {
//        imagePicker.sourceType = .photoLibrary
//        imagePicker.delegate = self
//        present(imagePicker, animated: true, completion: nil)
//    }
}
