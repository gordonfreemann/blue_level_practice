//
//  SecondViewController.swift
//  20170317(2)
//
//  Created by jungwan jin on 2017. 3. 17..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var startP: CGFloat = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let touch = touches.first {
            let startPoint = touch.location(in: view)
            startP = startPoint.y
        }
        
        //super.touchesBegan(touches, with: event)
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if let touch = touches.first {
            let movePoint = touch.location(in: view)
            self.view.backgroundColor = UIColor.cyan.withAlphaComponent(abs((startP-movePoint.y)/100))
        }
        
        
        //super.touchesMoved(touches, with: event)
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.backgroundColor = UIColor.cyan.withAlphaComponent(1)
        
        //super.touchesEnded(touches, with: event)
        
    }


}

