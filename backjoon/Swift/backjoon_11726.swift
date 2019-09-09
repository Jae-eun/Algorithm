//
//  backjoon_11726.swift
//  algo
//
//  Created by 이재은 on 09/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 11726 2×n 타일링
//2×n 크기의 직사각형을 1×2, 2×1 타일로 채우는 방법의 수를 구하는 프로그램을 작성하시오.
//
//아래 그림은 2×5 크기의 직사각형을 채운 한 가지 방법의 예이다.
//
//
//
//입력
//첫째 줄에 n이 주어진다. (1 ≤ n ≤ 1,000)
//
//출력
//첫째 줄에 2×n 크기의 직사각형을 채우는 방법의 수를 10,007로 나눈 나머지를 출력한다.

let n = Int(readLine()!)!
var count = [Int](repeating: 0, count: n+2)
count[1] = 1
count[2] = 2

if n > 2 {
    for i in 3...n {
        count[i] = (count[i-2] + count[i-1]) % 10007
    }
}
print(count[n])

//2
//답 2
//
//9
//답 55
