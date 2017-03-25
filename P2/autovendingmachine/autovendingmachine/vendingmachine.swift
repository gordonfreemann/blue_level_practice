//
//  func.swift
//  autovendingmachine
//
//  Created by jungwan jin on 2017. 3. 17..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import Foundation

class AutoVendingMachine
{
    private var stock = [String : [Product]]()
    
    func addDrink(product: Product, count: Int) // 특정음료수 재고 추가
    {
        let productName = product.getProduct()
        var tempArray = [Product]()
        for _ in 1...count {
            tempArray.append(product)
        }
        stock[productName] = tempArray
    }
    
    func checkStock() -> [String:Int] // 전체 재고 딕셔너리로 리턴
    {
        var stockDic = [String:Int]()
        for item in stock.keys
        {
            var tempArray = [Product]()
            for i in stock[item]!
            {
                tempArray.append(i)
            }
            stockDic[item] = tempArray.count
        }
        print(stockDic)
        return stockDic
    }
}

