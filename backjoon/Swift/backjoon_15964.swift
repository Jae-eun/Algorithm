//
//  backjoon_15964.swift
//  algo
//
//  Created by 이재은 on 08/07/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 15964 이상한 기호
// 연산자의 기호는 ＠으로, A＠B = (A+B)×(A-B)으로 정의내리기로 했다.
// 정수 A, B가 주어지면 A＠B를 계산

let input = readLine()!.split(separator: " ").map { Int($0)! }
func weird(_ a: Int, _ b: Int) -> Int {
    return (a+b) * (a-b)
}
print(weird(input[0], input[1]))
