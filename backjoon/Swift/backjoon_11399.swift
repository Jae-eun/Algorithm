//
//  backjoon_11399.swift
//  algo
//
//  Created by 이재은 on 10/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 11399 ATM
// ATM을 사용하려고 줄 서있는 사람들이 필요한 시간의 합의 최솟값 구하기
// 첫째 줄 사람의 수 N(1 ≤ N ≤ 1,000). 둘째 줄 각 사람이 돈을 인출하는데 걸리는 시간 Pi(1 ≤ Pi ≤ 1,000)

let N = Int(readLine()!)!
var time = readLine()!.split(separator: " ").map() { Int($0)! }
var minTime = 0
var result = 0
time = time.sorted()
for i in 0..<time.count {
    minTime += time[i]
    result += minTime
}
print(result)
