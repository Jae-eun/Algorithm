//
//  backjoon_2441.swift
//  algo
//
//  Created by 이재은 on 07/05/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 2441 별 찍기 - 4
// 첫째 줄에 주어진 N개의 별을 찍고, 다음 줄에 N-1, ... 1개까지 찍기
// ***
//  **
//   *

let input = Int(readLine()!)!
for i in 0..<input {
    for _ in 0..<i {
        print("    ", terminator: "")
    }
    for _ in i..<input {
        print("*", terminator: "")
    }
    print("")
}
