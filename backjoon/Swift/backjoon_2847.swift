//
//  backjoon_2847.swift
//  algo
//
//  Created by 이재은 on 12/01/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon_2847 게임을 만든 동준이
// for문 반대로 reversed()

let number = Int(readLine()!)!
var score = Array<Int>()
var count = 0
var num = 0
for _ in 0..<number {
    score.append(Int(readLine()!)!)
}
num = score[number-1]
for i in (0..<score.count-1).reversed() {
    while (score[i] >= num) {
        score[i] -= 1
        count += 1
    }
    num = score[i]
}
print(count)
