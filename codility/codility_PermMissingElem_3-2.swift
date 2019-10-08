//
//  codility_PermMissingElem_3-2.swift
//  algo
//
//  Created by 이재은 on 09/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// codility Time Complexity 3-2  PermMissingElem

// 길이가 n인 배열이 주어짐. 배열의 원소는 1부터 n+1까지 각각 다른 숫자임.
// 배열에 있어야 하는데 없는 숫자를 반환

public func solution(_ A : [Int]) -> Int {
    var A = A.sorted()
    var result: Int = A.count + 1
    for i in 0..<A.count {
        if A[i] != i + 1 {
            result = i + 1
            break
        }
    }
    return result
}

print(solution([2,3,1,5])) // 4
print(solution([])) // 1
