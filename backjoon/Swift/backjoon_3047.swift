//
//  backjoon_3047.swift
//  algo
//
//  Created by 이재은 on 24/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon ABC 3047

//세 수 A, B, C가 주어진다. A는 B보다 작고, B는 C보다 작다.
//
//세 수 A, B, C가 주어졌을 때, 입력에서 주어진 순서대로 출력하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 세 수 A, B, C가 주어진다. 하지만, 순서는 A, B, C가 아닐 수도 있다. 세 수는 100보다 작거나 같은 자연수이다. 둘째 줄에는 A, B, C로 이루어진 세 글자가 주어지며, 이 순서대로 출력하면 된다.
//
//출력
//주어진 세 수를 주어진 출력 순서대로 출력하면 된다.

let num = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
let alpha = readLine()!
var result = [Int](repeating: 0, count: 3)
var index = 0
for i in alpha {
    switch i {
    case "A":
        result[index] = num[0]
    case "B":
        result[index] = num[1]
    default:
        result[index] = num[2]
    }
    index += 1
}
result.forEach {
    print($0, terminator: " ")
}

//1 5 3
//ABC
//답
//1 3 5
