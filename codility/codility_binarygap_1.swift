//
//  codility_BinaryGap_1-1.swift
//  algo
//
//  Created by 이재은 on 09/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// codility Binary Gap Lesson 1 - Iterations

//A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones at both ends in the binary representation of N.
//
//For example, number 9 has binary representation 1001 and contains a binary gap of length 2. The number 529 has binary representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3. The number 20 has binary representation 10100 and contains one binary gap of length 1. The number 15 has binary representation 1111 and has no binary gaps. The number 32 has binary representation 100000 and has no binary gaps.
//
//Write a function:
//
//public func solution(_ N : Int) -> Int
//
//that, given a positive integer N, returns the length of its longest binary gap. The function should return 0 if N doesn't contain a binary gap.
//
//For example, given N = 1041 the function should return 5, because N has binary representation 10000010001 and so its longest binary gap is of length 5. Given N = 32 the function should return 0, because N has binary representation '100000' and thus no binary gaps.
//
//Write an efficient algorithm for the following assumptions:
//
//N is an integer within the range [1..2,147,483,647].
//Copyright 2009–2020 by Codility Limited. All Rights Reserved. Unauthorized copying, publication or disclosure prohibited.

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
