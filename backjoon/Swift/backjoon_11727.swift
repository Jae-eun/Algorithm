//
//  backjoon_11727.swift
//  algo
//
//  Created by 이재은 on 11/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 2×n 타일링 2 11727
// 2×n 직사각형을 2×1과 2×2 타일로 채우는 방법의 수를 구하는 프로그램을 작성하시오.
//
// 아래 그림은 2×17 직사각형을 채운 한가지 예이다.
//
//
//
// 입력
// 첫째 줄에 n이 주어진다. (1 ≤ n ≤ 1,000)
//
// 출력
// 첫째 줄에 2×n 크기의 직사각형을 채우는 방법의 수를 10,007로 나눈 나머지를 출력한다

let n = Int(readLine()!)!
var count = [Int](repeating: 0, count: n+2)
count[1] = 1
count[2] = 3

if n > 2 {
    for i in 3...n {
        count[i] = (count[i-2] * 2 + count[i-1]) % 10007
    }
}
print(count[n])


// 2
// 답 3
//
// 8
// 답 171
//
// 12
// 답 2731
