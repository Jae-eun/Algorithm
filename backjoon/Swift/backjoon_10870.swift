//
//  backjoon_10870.swift
//  algo
//
//  Created by 이재은 on 2020/09/23.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon 10870 피보나치 수 5
//
//문제
//피보나치 수는 0과 1로 시작한다. 0번째 피보나치 수는 0이고, 1번째 피보나치 수는 1이다. 그 다음 2번째 부터는 바로 앞 두 피보나치 수의 합이 된다.
//
//이를 식으로 써보면 Fn = Fn-1 + Fn-2 (n>=2)가 된다.
//
//n=17일때 까지 피보나치 수를 써보면 다음과 같다.
//
//0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597
//
//n이 주어졌을 때, n번째 피보나치 수를 구하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 n이 주어진다. n은 20보다 작거나 같은 자연수 또는 0이다.
//
//출력
//첫째 줄에 n번째 피보나치 수를 출력한다.

// 풀이 1
let n = Int(readLine()!)!

func fibonacci(_ n: Int) -> Int {
    if n == 0 { return 0 }
    else if n == 1 { return 1 }

    let start = (a: 0, b: 1)
    var nums = [Int]()
    let fib = sequence(state: start) { (state: inout (a: Int, b: Int)) -> Int? in
        defer { state = (state.b, state.a + state.b) }
        return state.a
    }

    for f in fib.prefix(n + 1) {
        nums.append(f)
    }
    return nums.last!
}
print(fibonacci(n))

// 풀이 2
let n = Int(readLine()!)!
var fibonacci: [Int] = [0, 1]
if n > 1 {
    for i in 2...n {
        fibonacci.append(fibonacci[i-2] + fibonacci[i-1])
    }
}
print(fibonacci[n])

// 풀이 3
let n = Int(readLine()!)!

func fibonacci(_ n: Int) -> Int {
    if n == 0 { return 0 }
    if n == 1 { return 1 }

    return fibonacci(n - 1) + fibonacci(n - 2)
}
print(fibonacci(n))

//10
//답
//55
