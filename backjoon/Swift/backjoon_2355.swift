//
//  backjoon_2355.swift
//  algo
//
//  Created by 이재은 on 13/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 2355 시그마
//
// 두 정수 A와 B가 주어졌을 때, 두 정수 사이에 있는 수의 합을 구하는 프로그램을 작성하시오. 사이에 있는 수들은 A와 B도 포함한다.
//
// 입력
// 첫째 줄에 두 정수 A, B가 주어진다. (-2,147,483,648 ≤ A, B ≤ 2,147,483,647)
//
// 출력
// 첫째 줄에 답을 출력한다. (-2,147,483,648 ≤ 답 ≤ 2,147,483,647)

var n = readLine()!.split(separator: " ").map { Int($0)! }
var result = 0

if n[0] > n[1] {
    n.swapAt(0, 1)
}
result = (n[1] - n[0] + 1) * (n[0] + n[1]) / 2

print(result)

// 1 2
// 답 3
