//
//  File.swift
//  autovendingmachine
//
//  Created by jungwan jin on 2017. 3. 16..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import Foundation


class Drink//, Equatable
{
    fileprivate var volume : Int
    fileprivate var price : Int
    fileprivate var sellbydate : Date
    
    
    init(setVolume : Int, setPrice : Int, setSellByDate: Date)
    {
        volume = setVolume
        price = setPrice
        sellbydate = setSellByDate
    }
    
    
    
    //static func == (lhs: Drink, rhs: Drink) -> Bool {
    //    return lhs.price == rhs.price
    //}
}

class Brand : Drink
{
    fileprivate var brandname : String
    
    init(setVolume: Int, setPrice: Int, setSellByDate: Date, setBrand: String)
    {
        brandname = setBrand
        super.init(setVolume: 0, setPrice: 0, setSellByDate: Date())
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
    
    //static func == (lhs: Product, rhs: Product) -> Bool {
    //    return lhs.productname == rhs.productname && lhs.volume == lhs.volume
    //}
}





