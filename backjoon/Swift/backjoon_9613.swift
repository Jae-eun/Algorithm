//
//  backjoon_9613.swift
//  algo
//
//  Created by 이재은 on 27/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon GCD 합 9613

//양의 정수 n개가 주어졌을 때, 가능한 모든 쌍의 GCD의 합을 구하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 테스트 케이스의 개수 t (1 ≤ t ≤ 100)이 주어진다. 각 테스트 케이스는 한 줄로 이루어져 있다. 각 테스트 케이스는 수의 개수 n (1 < n ≤ 100)가 주어지고, 다음에는 n개의 수가 주어진다. 입력으로 주어지는 수는 1000000을 넘지 않는다.
//
//출력
//각 테스트 케이스마다 가능한 모든 쌍의 GCD의 합을 출력한다.

func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    while a % b != 0 {
        let remainder = a % b
        a = b
        b = remainder
    }
    return b
}

let t = Int(readLine()!)!

for _ in 0..<t {
    let n = readLine()!.split(separator: " ").map { Int($0)! }
    var result = 0
    for i in 1..<n[0] {
        for j in i+1...n[0] {
            result += gcd(n[i], n[j])
        }
    }
    print(result)
}

//3
//4 10 20 30 40
//3 7 5 12
//3 125 15 25
//
//답
//70
//3
//35
