//
//  main.swift
//  autovendingmachine
//
//  Created by jungwan jin on 2017. 3. 16..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import Foundation



var cocacola = Product(setVolume: 355, setPrice: 900, setSellByDate: Date(), setBrand: "cocacola", setProduct: "cocacola")
var sprite = Product(setVolume: 355, setPrice: 900, setSellByDate: Date(), setBrand: "cocacola", setProduct: "sprite")
var fanta = Product(setVolume: 355, setPrice: 900, setSellByDate: Date(), setBrand: "cocacola", setProduct: "fanta")


var vending = AutoVendingMachine()
vending.addDrink(product: cocacola, count: 10)
vending.addDrink(product: sprite, count: 10)
vending.addDrink(product: fanta, count: 10)

vending.checkStock()
