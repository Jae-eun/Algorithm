//
//  backjoon_1934.swift
//  algo
//
//  Created by 이재은 on 27/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 최소공배수 1934

//두 자연수 A와 B에 대해서, A의 배수이면서 B의 배수인 자연수를 A와 B의 공배수라고 한다. 이런 공배수 중에서 가장 작은 수를 최소공배수라고 한다. 예를 들어, 6과 15의 공배수는 30, 60, 90등이 있으며, 최소 공배수는 30이다.
//
//두 자연수 A와 B가 주어졌을 때, A와 B의 최소공배수를 구하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 테스트 케이스의 개수 T(1 ≤ T ≤ 1,000)가 주어진다. 둘째 줄부터 T개의 줄에 걸쳐서 A와 B가 주어진다. (1 ≤ A, B ≤ 45,000)
//
//출력
//첫째 줄부터 T개의 줄에 A와 B의 최소공배수를 입력받은 순서대로 한 줄에 하나씩 출력한다.

func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    var remainder = 0

    while a % b != 0 {
        remainder = a % b
        a = b
        b = remainder
    }
    return b
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    print(lcm(input[0], input[1]))
}


//3
//1 45000
//6 10
//13 17

//답
//45000
//30
//221
