//
//  backjoon_2577.swift
//  algo
//
//  Created by 이재은 on 15/05/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 2577 숫자의 개수
// 세개의 자연수 A, B, C가 주어짐
// A*B*C의 결과에 0부터 9까지 숫자가 몇 번 쓰였는지 구하기
// 숫자는 100보다 같거나 크고, 1,000보다 작은 자연수

var multiply = 1
var result = [Int](repeating: 0, count: 10)
for _ in 0..<3 {
    let input = Int(readLine()!)!
    multiply *= input
}
let digits = String(multiply).compactMap{ $0.wholeNumberValue }
for index in 0..<digits.count {
    for num in 0..<10 {
        if num == digits[index] {
            result[num] += 1
            break
        }
    }
}
for index in 0..<10 {
    print(result[index])
}
