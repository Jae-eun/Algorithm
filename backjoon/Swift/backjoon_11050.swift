
//
//  backjoon_11050.swift
//  algo
//
//  Created by 이재은 on 24/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

//backjoon 이항 계수 1 11050

//자연수 과 정수 가 주어졌을 때 이항 계수 를 구하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 과 가 주어진다. (1 ≤  ≤ 10, 0 ≤  ≤ )
//
//출력
//를 출력한다.

func factorial(_ n: Int) -> Int {
    if n == 0 {
        return 1
    }
    var a = 1
    for i in 1...n {
        a *= i
    }
    return a
}

let n = readLine()!.split(separator: " ").map { Int($0)! }
let result = factorial(n[0]) / (factorial(n[1]) * factorial(n[0] - n[1]))
print(result)

// 5 2
// 답
// 10
