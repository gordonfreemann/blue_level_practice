//
//  File.swift
//  autovendingmachine
//
//  Created by jungwan jin on 2017. 3. 16..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import Foundation

class Brand
{
    private var brandname : String
    
    init(Brand: String)
    {
        brandname = Brand
    }
    
    func setBrand(setBrand : String)
    {
        brandname = setBrand
    }
}

class Product : Brand
{
    private var productname : String

    init(Brand: String, Product: String)
    {
        productname = Product
        super.init(Brand: Brand)
    }
    
    func setProduct(setProduct: String)
    {
        productname = setProduct
    }
}

class Spec : Product
{
    private var volume : Int
    private var price : Int
    private var expirationdate : Date
    
    init(Volume: Int, Price: Int, Exp: Date)
    {
        volume = Volume
        price = Price
        expirationdate = Exp
    }
    
    func setSpec(setVolume: Int, setPrice: Int, setExp: Date)
    {
        volume = setVolume
        price = setPrice
        expirationdate = setExp

    }
}

