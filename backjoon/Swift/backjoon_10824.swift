//
//  backjoon_10824.swift
//  algo
//
//  Created by 이재은 on 06/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 네 수 10824
// 네 자연수 A, B, C, D가 주어진다. 이때, A와 B를 붙인 수와 C와 D를 붙인 수의 합을 구하는 프로그램을 작성하시오.
//
// 두 수 A와 B를 합치는 것은 A의 뒤에 B를 붙이는 것을 의미한다. 즉, 20과 30을 붙이면 2030이 된다.
//
// 입력
// 첫째 줄에 네 자연수 A, B, C, D가 주어진다. (1 ≤ A, B, C, D ≤ 1,000,000)
//
// 출력
// A와 B를 붙인 수와 C와 D를 붙인 수의 합을 출력한다.

let input = readLine()!.split(separator: " ").map { String($0) }
let AB = input[0] + input[1]
let CD = input[2] + input[3]
print(Int(AB)! + Int(CD)!)

// 10 20 30 40
// 답 4060
