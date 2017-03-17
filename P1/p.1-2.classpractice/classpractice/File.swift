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

class CXMonamiPen: CXPen
{
    private var model : String
    
    init(withModel: String)
    {
        model = withModel
    }
    
    func setModel(setModel: String)
    {
        model = setModel
    }
    
    override func setBrand(setBrand: String)
    {
        super.setBrand(setBrand: "Monami")
    }
    
    //override init()
    //{
    //    super.setBrand(setBrand: "Monami")
    //}
}

