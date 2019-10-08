//
//  codility_PermCheck_4-1.swift
//  algo
//
//  Created by 이재은 on 09/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// codility Lesson 4 Counting Elements 1 PermCheck

// 주어진 배열이 1씩 증가하는 수열이면 1 반환, 아니면 0 반환

public func solution(_ A : [Int]) -> Int {
    let A = A.sorted()
    let perm = [Int](1...A.count)
    if A == perm {
        return 1
    } else {
        return 0
    }
}

print(solution([4,1,3,2])) // 1
print(solution([4,1,3])) // 0
