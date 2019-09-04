//
//  backjoon_1463.swift
//  algo
//
//  Created by 이재은 on 05/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 1로 만들기 1463

// 정수 X에 사용할 수 있는 연산은 다음과 같이 세 가지 이다.
//
// X가 3으로 나누어 떨어지면, 3으로 나눈다.
// X가 2로 나누어 떨어지면, 2로 나눈다.
// 1을 뺀다.
// 정수 N이 주어졌을 때, 위와 같은 연산 세 개를 적절히 사용해서 1을 만들려고 한다. 연산을 사용하는 횟수의 최솟값을 출력하시오.
//
// 입력
// 첫째 줄에 1보다 크거나 같고, 106보다 작거나 같은 정수 N이 주어진다.
//
// 출력
// 첫째 줄에 연산을 하는 횟수의 최솟값을 출력한다.

let input = Int(readLine()!)!
var x = input
var count = [Int](repeating: 0, count: x+1)

if x != 1 {
    for i in 2...x {
        count[i] = count[i-1] + 1
        if i % 3 == 0 && count[i] > count[i/3] {
            count[i] = count[i/3] + 1
        }
        if i % 2 == 0  && count[i] > count[i/2] {
            count[i] = count[i/2] + 1
        }
    }
}
print(count[x])


//2
//답 1
//10
//답 3
