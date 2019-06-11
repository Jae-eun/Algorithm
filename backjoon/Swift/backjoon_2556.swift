//
//  backjoon_2556.swift
//  algo
//
//  Created by 이재은 on 12/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 2556 별 찍기
// 첫째 줄 N(1 ≤ N ≤ 100)이 주어짐
// 적절히 별을 출력

let N = Int(readLine()!)!

for _ in 0..<N {
    for _ in 0..<N {
        print("*", terminator: "")
    }
    print("")
}
