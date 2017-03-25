//
//  File.swift
//  autovendingmachine
//
//  Created by jungwan jin on 2017. 3. 16..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import Foundation

class Drink
{
    private var volume : Int
    private var price : Int
    private var sellbydate : Date
    
    init(setVolume : Int, setPrice : Int, setSellByDate: Date)
    {
        volume = setVolume
        price = setPrice
        sellbydate = setSellByDate
    }
}

class Brand : Drink
{
    private var brandname : String
    
    init(setVolume: Int, setPrice: Int, setSellByDate: Date, setBrand: String)
    {
        brandname = setBrand
        super.init(setVolume: 0, setPrice: 0, setSellByDate: Date())
    }
    
    func setBrand(setBrand: String)
    {
        brandname = setBrand
    }
}

class Product : Brand
{
    private var productname : String
    
    init(setVolume: Int, setPrice: Int, setSellByDate: Date, setBrand: String, setProduct: String)
    {
        productname = setProduct
        super.init(setVolume: 0, setPrice: 0, setSellByDate: Date(), setBrand: "")
    }
    
    func getProduct() -> String
    {
        return productname
    }
}


