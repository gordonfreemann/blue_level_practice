//
//  MyView.swift
//  P7-1
//
//  Created by jungwan jin on 2017. 3. 22..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import UIKit

class MyView : UIView
{
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        
        
        func randomColor() -> UIColor
        {
            return UIColor(red: randomFloat(), green: randomFloat(), blue: randomFloat(), alpha: CGFloat(1))
        }
        
        func randomFloat() -> CGFloat
        {
            return CGFloat(arc4random_uniform(255)) / 255
        }
        
        let color1 = randomColor().cgColor
        let color2 = randomColor().cgColor
        let color3 = randomColor()
        let gradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: [color1, color2] as CFArray, locations: nil)!
        
        
        context?.drawLinearGradient(gradient, start: CGPoint(x: self.bounds.midX, y: self.bounds.minY), end: CGPoint(x: self.bounds.midX, y: self.bounds.maxY), options: CGGradientDrawingOptions.drawsBeforeStartLocation)
        
        func drawLine()
        {
            for _ in 0...10
            {
                let doYourPath = UIBezierPath.init()
                let startP = CGPoint(x: Int(arc4random_uniform(320)), y: Int(arc4random_uniform(560)))
                let endP = CGPoint(x: Int(arc4random_uniform(320)), y: Int(arc4random_uniform(560)))
                doYourPath.move(to: startP)
                doYourPath.addLine(to: endP)
                doYourPath.lineWidth = 3
                UIColor.init(red: randomFloat(), green: randomFloat(), blue: randomFloat(), alpha: 1).setStroke()
                doYourPath.stroke()
            }
        }
        
        //func drawCircle()
        //{
        //    let centerP = CGPoint(x:)
        //    let doCircle = UIBezierPath.init(arcCenter: <#T##CGPoint#>, radius: <#T##CGFloat#>, startAngle: <#T##CGFloat#>, endAngle: <#T##CGFloat#>, clockwise: <#T##Bool#>)
        //}
        
        let line = drawLine()
        
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.setNeedsDisplay()
    }
}
