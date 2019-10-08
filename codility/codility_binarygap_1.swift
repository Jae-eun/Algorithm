//
//  codility_BinaryGap_1-1.swift
//  algo
//
//  Created by 이재은 on 09/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// codility Binary Gap Lesson 1 - Iterations

// 이진수로 변환했을 때 1과 1 사이의 0의 최대 길이

public func solution(_ N : Int) -> Int {
    let binaryN = String(N, radix: 2)
    var maxLength = 0
    var count = 0
    for n in binaryN {
        switch n {
        case "1":
            if count > maxLength {
                maxLength = count
            }
            count = 0
        case "0":
            count += 1
        default:
            continue
        }
    }
    return maxLength
}

print(solution(1041)) // 5
print(solution(32)) // 0
print(solution(529)) // 4
print(solution(15)) // 0
print(solution(9)) // 2
print(solution(2147483647)) // 0
print(solution(1)) // 0
