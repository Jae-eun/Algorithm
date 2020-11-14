//
//  backjoon_11966.swift
//  algo
//
//  Created by 이재은 on 2020/11/15.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon 2의 제곱인가? 11966
//
//문제
//자연수 N이 주어졌을 때, 2의 제곱수면 1을 아니면 0을 출력하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 N(1 ≤ N ≤ 2^30)이 주어진다.
//
//출력
//N이 2의 제곱수면 1을 아니면 0을 출력하는 프로그램을 작성하시오.

// 풀이 1
let N = Int(readLine()!)!
var powerOfTwo = [Int]()
for i in 0...31 {
    powerOfTwo.append(Int(truncating: pow(2, i) as NSNumber))
}
print(powerOfTwo.contains(N) ? 1 : 0)

// 풀이 2
var N = Int(readLine()!)!
while N % 2 == 0 {
    N /= 2
}
print(N == 1 ? 1 : 0)

//1
//답
//1
//
//2
//답
//1
//
//3
//답
//0
//
//4
//답
//1
