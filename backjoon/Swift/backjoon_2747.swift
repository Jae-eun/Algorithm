//
//  backjoon_2747.swift
//  algo
//
//  Created by 이재은 on 15/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 2747 피보나치 수
// n이 주어졌을 때, n번째 피보나치 수를 구하기
// n은 45보다 작거나 같은 자연수

let n = Int(readLine()!)!
var fibonacci = [Int](repeating: 0, count: n+1)
fibonacci[1] = 1

for i in 1..<n {
    fibonacci[i+1] = fibonacci[i-1] + fibonacci[i]
}
print(fibonacci[n])
