//
//  backjoon_10844.swift
//  algo
//
//  Created by 이재은 on 20/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 쉬운 계단 수 10844

// 45656이란 수를 보자.
//
// 이 수는 인접한 모든 자리수의 차이가 1이 난다. 이런 수를 계단 수라고 한다.
//
// 세준이는 수의 길이가 N인 계단 수가 몇 개 있는지 궁금해졌다.
//
// N이 주어질 때, 길이가 N인 계단 수가 총 몇 개 있는지 구하는 프로그램을 작성하시오. (0으로 시작하는 수는 없다.)
//
// 입력
// 첫째 줄에 N이 주어진다. N은 1보다 크거나 같고, 100보다 작거나 같은 자연수이다.
//
// 출력
// 첫째 줄에 정답을 1,000,000,000으로 나눈 나머지를 출력한다.

let n = Int(readLine()!)!
var dp = [0] + [Int](repeating: 1, count: 9)

for _ in 1..<n {
    var forward = dp
    dp[0] = forward[1]
    for j in 1...8 {
        dp[j] = (forward[j-1] + forward[j+1]) % 1000000000
    }
    dp[9] = forward[8]
}

print(dp.reduce(0, +) % 1000000000)

//1
//답 9
//
//2
//답 17

