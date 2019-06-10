//
//  backjoon_11047.swift
//  algo
//
//  Created by 이재은 on 10/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 11047 동전 0
// 첫째 줄에 K원을 만드는데 필요한 동전 개수의 최솟값을 출력
// 첫째 줄에 N과 K가 주어짐 (1 ≤ N ≤ 10, 1 ≤ K ≤ 100,000,000)

let won = readLine()!.split(separator: " ").map(){ Int($0)! }
var money = won[1]
var coin = [Int]()
var count = 0
for _ in 0..<won[0] {
    coin.append(Int(readLine()!)!)
}
coin = coin.reversed()
for i in 0..<coin.count {
    repeat {
        if money == 0 {
            break
        }
        if money >= coin[i] {
            money -= coin[i]
            count += 1
        }
    } while money >= coin[i]
}
print(count)
