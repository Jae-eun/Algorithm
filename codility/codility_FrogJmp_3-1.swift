//
//  codility_FrogJmp_3-1.swift
//  algo
//
//  Created by 이재은 on 09/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// codility FrogJmp Lesson 3 - 1 Time Complexity

// X에서 시작하여 D만큼 점프해서 Y보다 크거나 같아지는 점프 횟수 반환

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    let num = Y - X
    let count = num / D
    if D * count >= num {
        return count
    } else {
        return count + 1
    }
}

print(solution(10, 85, 30)) // 3
