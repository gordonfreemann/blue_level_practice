//
//  File.swift
//  classpractice
//
//  Created by jungwan jin on 2017. 3. 15..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import Foundation

class CXPen
{
    private var brand : String
    private var color : String
    private var usage : Int
    
    init(withBrand : String)
    {
        brand = withBrand
        color = ""
        usage = 0
    }
    
    func setBrand(setBrand: String)
    {
        brand = setBrand
    }
    
    func setColor(setColor : String)
    {
        color = setColor
    }
    
    func setUsage(setUsage : Int)
    {
        usage = setUsage
    }
    
    func printDescription()
    {
        print(brand, color, usage)
    }
}

class PenHolder
{
    private var pens : [CXPen]
    private var usage : Int
    private var capacity : Int
    
    init(withCapacity : Int)
    {
        capacity = withCapacity
        pens = []
        usage = 0
    }
    
    func add(pen: CXPen)
    {
        pens.append(pen)
        usage = Int(Double(pens.count) / Double(capacity) * 100)
    }
    
    func remove(penIndex : Int)
    {
        pens.remove(at: penIndex)
        usage = Int(Double(pens.count) / Double(capacity) * 100)
    }
    
    func usages() -> Int
    {
        return usage
    }
    
    func printDescription()
    {
        print(capacity, pens, usage)
    }
}



