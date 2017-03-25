//
//  ViewController.swift
//  MyVending
//
//  Created by jungwan jin on 2017. 3. 20..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let vending = AutoVendingMachine()

    override func viewDidLoad()
    {
        super.viewDidLoad()
         //Do any additional setup after loading the view, typically from a nib.
        let cocacola = Product(setVolume: 355, setPrice: 900, setSellByDate: Date(), setBrand: "cocacola", setProduct: "cocacola")
        let sprite = Product(setVolume: 355, setPrice: 900, setSellByDate: Date(), setBrand: "cocacola", setProduct: "sprite")
        let fanta = Product(setVolume: 355, setPrice: 900, setSellByDate: Date(), setBrand: "cocacola", setProduct: "fanta")
        
        let vending = AutoVendingMachine()
        vending.addDrink(product: cocacola, count: 10)
        vending.addDrink(product: sprite, count: 10)
        vending.addDrink(product: fanta, count: 10)
        //print(cocacola == fanta)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func saveData()
    {
        var saveDataA = vending.saveData()
    }


}

