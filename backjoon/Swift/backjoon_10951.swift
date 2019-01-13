//
//  backjoon_10951.swift
//  algo
//
//  Created by 이재은 on 13/01/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 10951 A + B - 4

while true {
    let input = readLine() ?? ""
    if input == "" {
        break
    } else {
        var number = input.split(separator: " ")
        let a = Int(number[0])!
        let b = Int(number[1])!
        print(a+b)
    }
}
