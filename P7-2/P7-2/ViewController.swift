//
//  ViewController.swift
//  P7-2
//
//  Created by jungwan jin on 2017. 3. 23..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var splitview: UIView!
    
    
    @IBOutlet weak var topViewY: NSLayoutConstraint!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let panRacon = UIPanGestureRecognizer(target: self, action: #selector(ViewController.PanGesture))
        topViewY.constant = self.view.bounds.midY
        self.splitview.addGestureRecognizer(panRacon)
    }
    
    func PanGesture(rec: UIPanGestureRecognizer) {
        topViewY.constant = rec.location(in: self.view).y
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}



