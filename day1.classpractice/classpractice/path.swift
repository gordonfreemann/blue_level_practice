//
//  path.swift
//  classpractice
//
//  Created by jungwan jin on 2017. 3. 15..
//  Copyright © 2017년 jungwan jin. All rights reserved.
//

import Foundation

class FileMatcher
{
    private var file: [String]
    let filemanager = FileManager()
    
    init() {
        file = []
    }
    
    func allFiles(atPath: String) -> [String]
    {
        let contentsArray = try? filemanager.contentsOfDirectory(atPath: atPath)
        return contentsArray!
    }
    
    func isExist(filename: String, atPath: String) -> Bool
    {
        let contentsArray = try? filemanager.contentsOfDirectory(atPath: atPath)
        let search = contentsArray?.contains(filename)
        return search!
    }
}

