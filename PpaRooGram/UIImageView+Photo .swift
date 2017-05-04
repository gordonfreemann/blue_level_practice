//
//  UIImageView+Photo .swift
//  PpaRooGram
//
//  Created by jungwan jin on 2017. 5. 1..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func setImage(with photoID: String?, placeholder: UIImage? = nil) {
        guard let photoID = photoID else {
            self.image = placeholder
            return
        }
        let url = URL(string: "http://localhost:8000/\(photoID)")
        self.kf.setImage(with: url, placeholder: placeholder)
    }
}


