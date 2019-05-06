//
//  backjoon_2442.swift
//  algo
//
//  Created by 이재은 on 07/05/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 2442 별 찍기 - 5
// 입력 받은 N번째 줄까지 별 찍기
// N번째 줄에는 별 2×N-1개를 대칭으로 찍음
//  *
// ***

let N = Int(readLine()!)!
for i in 1..<N + 1{
    for _ in 0..<N - i {
        print(" ", terminator: "")
    }
    for _ in 0..<2*i - 1 {
        print("*", terminator: "")
    }
    print("")
}
