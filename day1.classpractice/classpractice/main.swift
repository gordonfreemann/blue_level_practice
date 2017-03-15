//
//  main.swift
//  classpractice
//
//  Created by jungwan jin on 2017. 3. 15..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import Foundation



let cxpen1 = CXPen(withBrand: "monami")
cxpen1.setColor(setColor: "red")
cxpen1.setUsage(setUsage: 50)
cxpen1.printDescription()


let penholder1 = PenHolder(withCapacity: 10)
penholder1.add(pen: cxpen1)
penholder1.add(pen: cxpen1)
penholder1.printDescription()


