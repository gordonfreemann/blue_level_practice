//
//  CollectionViewCell.swift
//  PpaRooGram
//
//  Created by jungwan jin on 2017. 4. 25..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    
    // MARK: Properties
    
    fileprivate var post: Post?
    
    func configure(post: Post, isMessageTrimmed: Bool) {
        self.post = post
        
        cellImage.setImage(with: post.image)
        cellLabel.text = post.text
    }
}
