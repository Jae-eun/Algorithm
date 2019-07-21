//
//  backjoon_2588.swift
//  algo
//
//  Created by 이재은 on 22/07/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 2588 곱셈
// (세 자리 수) × (세 자리 수)는 다음과 같은 과정을 통하여 이루어진다.
// 곱해지는 세 자리 자연수가 2개 주어질 때 (3), (4), (5), (6)위치에 들어갈 값을 구하기

let input1 = Int(readLine()!)!
let input2 = Int(readLine()!)!
let digits = String(input2).compactMap{ Int(String($0)) }
var process = [Int](repeating: 0, count: 3)

for i in (0..<digits.count).reversed() {
    process[i] = input1 * digits[i]
    print(process[i])
}
let result = input1 * input2
print(result)
