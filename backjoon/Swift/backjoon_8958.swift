//
//  backjoon_8958.swift
//  algo
//
//  Created by 이재은 on 01/01/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon_8958 OX 퀴즈

let n = Int(readLine() ?? "") ?? 0
var result = Array(repeating: 0, count: n)
for j in 0..<n {
    var score = 0
    let input = readLine() ?? ""
    var array = input.characters.map{ String($0) }
    for i in 0..<array.count {
        if array[i] == "O" {
            score += 1
            result[j] += score
        } else {
            score = 0
        }
    }
}
for j in 0..<n {
    print(result[j])
}
