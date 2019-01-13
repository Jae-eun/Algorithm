//
//  backjoon_10950.swift
//  algo
//
//  Created by 이재은 on 13/01/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 10950 A + B - 3

let testCase = Int(readLine()!)!
var result = Array<Int>()
for _ in 0..<testCase {
    let input = readLine()!
    var number = input.split(separator: " ")
    let a = Int(number[0])!
    let b = Int(number[1])!
    result.append(a+b)
}
for i in 0..<testCase {
    print(result[i])
}
