//
//  FirstViewController.swift
//  P8-1
//
//  Created by jungwan jin on 2017. 3. 23..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var imageView: UIImageView!

    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func camera(_ sender: UIButton)
    {
        imagePicker.sourceType = .photoLibrary // 타입 설정하여 카메라 혹은 라이브러리등을 선택해서 띄움
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil) // 모달로 선택창 띄우는 코드
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage]  {
            imageView.image = image as? UIImage // 이미지뷰에 선택 이미지 넣기
            self.dismiss(animated: true, completion: nil) // 이미지 선택후에 창 없애는 코드
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

