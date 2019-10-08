//
//  codility_CyclicRotation_2-2.swift
//  algo
//
//  Created by 이재은 on 09/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// codility CyclicRotation Lesson 2 - 2

// 주어진 배열을 주어진 K만큼 오른쪽으로 회전시킨 배열을 반환

public func solution(_ A : [Int], _ K : Int) -> [Int] {
    var A = A
    if A.count != 0 && K != 0 {
        let k = K % A.count
        for _ in 0..<k {
            A.insert(A.last!, at: 0)
            A.removeLast()
        }
    }
    return A
}

print(solution([3, 8, 9, 7, 6], 3)) // [9, 7, 6, 3, 8]
print(solution([0,0,0], 1)) // [0,0,0]
print(solution([1,2,3,4], 4)) // [1,2,3,4]
print(solution([], 0))
print(solution([1], 0))
print(solution([], 4))
