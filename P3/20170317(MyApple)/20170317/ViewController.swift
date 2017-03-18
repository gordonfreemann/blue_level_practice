//
//  ViewController.swift
//  20170317
//
//  Created by jungwan jin on 2017. 3. 17..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appleImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func buttonTouched(_ sender: UIButton) {
        appleImageView.isHighlighted = !appleImageView.isHighlighted
    }

}

