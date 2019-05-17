//
//  backjoon_2576.swift
//  algo
//
//  Created by 이재은 on 18/05/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 2576 홀수
// 자연수 7개가 주어짐
// 홀수를 찾아 그 합과 최솟값을 출력
// 홀수가 없으면 -1 출력

var odd = [Int]()
var sum = 0
var min = 0
for _ in 0..<7 {
    let input = Int(readLine()!)!
    if input % 2 == 1 {
        odd.append(input)
        sum += input
    }
}
if odd.count == 0 {
    print(-1)
} else {
    min = odd.min()!
    print(sum)
    print(min)
}
