//
//  File.swift
//  datentime
//
//  Created by jungwan jin on 2017. 3. 16..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import Foundation

class MyCalendar
{
    private var now = Date(timeIntervalSinceNow: +32400)
    
    func day() -> (Int, Int, Int, Int, Int, Int)
    {
        var tuple : (Int, Int, Int, Int, Int, Int)
        let today = now.description.components(separatedBy: " ")
        let ymd = today[0].components(separatedBy: "-").map { Int($0)! }
        let hms = today[1].components(separatedBy: ":").map { Int($0)! }
        tuple.0 = ymd[0]
        tuple.1 = ymd[1]
        tuple.2 = ymd[2]
        tuple.3 = hms[0]
        tuple.4 = hms[1]
        tuple.5 = hms[2]
        
        return tuple
    }
    
    func convertKorDay(day: Date) -> String
    {
        
    }
    
    
}








