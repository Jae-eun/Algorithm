//
//  backjoon_1110.swift
//  algo
//
//  Created by 이재은 on 2021/01/23.
//  Copyright © 2021 이재은. All rights reserved.
//

import Foundation

// backjoon 더하기 사이클 1110

//문제
//0보다 크거나 같고, 99보다 작거나 같은 정수가 주어질 때 다음과 같은 연산을 할 수 있다. 먼저 주어진 수가 10보다 작다면 앞에 0을 붙여 두 자리 수로 만들고, 각 자리의 숫자를 더한다. 그 다음, 주어진 수의 가장 오른쪽 자리 수와 앞에서 구한 합의 가장 오른쪽 자리 수를 이어 붙이면 새로운 수를 만들 수 있다. 다음 예를 보자.
//
//26부터 시작한다. 2+6 = 8이다. 새로운 수는 68이다. 6+8 = 14이다. 새로운 수는 84이다. 8+4 = 12이다. 새로운 수는 42이다. 4+2 = 6이다. 새로운 수는 26이다.
//
//위의 예는 4번만에 원래 수로 돌아올 수 있다. 따라서 26의 사이클의 길이는 4이다.
//
//N이 주어졌을 때, N의 사이클의 길이를 구하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 N이 주어진다. N은 0보다 크거나 같고, 99보다 작거나 같은 정수이다.
//
//출력
//첫째 줄에 N의 사이클 길이를 출력한다.

var N = readLine()!
if Int(N)! < 10 {
    N = "0" + N
}
var temp = N
var cycle = 0

repeat {
    let sum = String(temp.compactMap { $0.wholeNumberValue }.reduce(0, +))
    temp = temp.map { String($0) }.last! + sum.map { String($0) }.last!
    cycle += 1
} while N != temp

print(cycle)

//26
//답
//3
//
//55
//답
//3
//
//1
//답
//60
//
//0
//답
//1













1
let N = Int(readLine()!)!
2
var count = 0
3
var num = N
4

5
repeat{
6
    let rhs = ((num / 10) + (num % 10)) % 10
7
    let lhs = num % 10
8
    num = lhs * 10 + rhs
9
    count += 1
10
}while(N != num)
11

12
print(count)




