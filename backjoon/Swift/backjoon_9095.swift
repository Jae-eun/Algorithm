//
//  backjoon_9095.swift
//  algo
//
//  Created by 이재은 on 18/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjooon 9095 1, 2, 3 더하기
// 정수 n이 주어졌을 때, n을 1, 2, 3의 합으로 나타내는 방법의 수 구하기
// 첫째 줄에 테스트 케이스의 개수 T가 주어짐. 각 테스트 케이스는 한 줄로, 정수 n(11보다 작은 양수)
var count = [Int](repeating: 0, count: 11)
count[0] = 0
count[1] = 1
count[2] = 2
count[3] = 4

let testcase = Int(readLine()!)!

for _ in 0..<testcase {
    let number = Int(readLine()!)!
    if number >= 4 {
        for i in 4...number {
            count[i] = count[i-1] + count[i-2] + count[i-3]
        }
    }
    print(count[number])
}
