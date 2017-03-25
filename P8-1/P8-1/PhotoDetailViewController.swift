//
//  PhotoDetailViewController.swift
//  P8-1
//
//  Created by jungwan jin on 2017. 3. 23..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {
    
    var titlelLabelText = String()
    var contentLabel = String()
    var commentsLabel = String()
    var imageString = String()
    
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var titleM: UILabel!
    @IBOutlet weak var content: UILabel!
    @IBOutlet weak var comment: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        titleM.text = titlelLabelText
        content.text = contentLabel
        comment.text = commentsLabel
        movieImage.image = UIImage(named: imageString)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
