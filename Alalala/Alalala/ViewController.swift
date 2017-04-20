//
//  ViewController.swift
//  Alalala
//
//  Created by jungwan jin on 2017. 4. 19..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var idArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        PostService.getAll{ result in
            for item in result {
                print(item["text"]!)
                print(item["image"]!)
                print(item["_id"]!)
                self.idArray.append(item["_id"]! as! String)
            }
            print(self.idArray)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func postCreatedButton(_ sender: Any) {
        PostService.create(text: Date().description, image: Date().description + ".png") {
            string in print(string)
        }
    }
    
    @IBAction func psetDeletedButton(_ sender: Any) {
        PostService.delete(id: idArray[0]) {
            result in print(result)
        }
    }
}

