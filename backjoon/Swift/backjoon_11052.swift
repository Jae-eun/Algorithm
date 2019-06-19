//
//  backjoon_11052.swift
//  algo
//
//  Created by 이재은 on 20/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 11052 카드 구매하기
// 카드 팩의 가격이 주어졌을 때, N개의 카드를 구매하기 위해 민규가 지불해야 하는 금액의 최댓값 구하기
// 첫째 줄에 구매하려고 하는 카드의 개수 N(1 ≤ N ≤ 1,000)
// 둘째 줄에는 Pi가 P1부터 PN까지 순서대로 (1 ≤ Pi ≤ 10,000)

let N = Int(readLine()!)!
let price = readLine()!.split(separator: " ").map{ Int($0)! }
var sum = [Int](repeating: 0, count: N+1)

for i in 1...N {
    for j in 0..<i {
        sum[i] = max(sum[i], price[j] + sum[i-j-1])
    }
}
print(sum[N])

// 카드 i개의 방법 = 카드 j의 가격 + 카드 i-j개의 방법
// 카드 4개의 방법 = 카드 1의 가격 + 카드 3(4-1)개의 방법
//             = 카드 2의 가격 + 카드 2(4-2)개의 방법
//             = 카드 3의 가격 + 카드 1(4-3)개의 방법
//             = 카드 4의 가격 + 카드 0(4-4)개의 방법
// 중에 최댓값
