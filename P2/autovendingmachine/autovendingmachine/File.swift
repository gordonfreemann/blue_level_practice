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

    init(Product: String)
    {
        productname = Product
    }
    
    func setProduct(setProduct: String)
    {
        productname = setProduct
    }
}

class Drink : Product
{
    private var volume : Int
    private var price : Int
    private var expirationdate : Date
    
    init(Volume: Int, Price: Int, Exp: Date)
    {
        volume = volume
        price = Price
        expirationdate = Exp
    }
    
    func setDrink(setVolume: Int, setPrice: Int, setExp: Date)
    {
        volume = setVolume
        price = setPrice
        expirationdate = setExp

    }
}

