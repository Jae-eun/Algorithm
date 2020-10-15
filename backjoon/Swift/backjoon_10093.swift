//
//  backjoon_10093.swift
//  algo
//
//  Created by 이재은 on 2020/10/15.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon 숫자 10093

//문제
//두 양의 정수가 주어졌을 때, 두 수 사이에 있는 정수를 모두 출력하는 프로그램을 작성하시오.
//
//입력
//두 정수 A와 B가 주어진다. (1 ≤ A, B ≤ 1015, A와 B의 차이는 최대 100,000)
//
//출력
//첫째 줄에 두 수 사이에 있는 수의 개수를 출력한다.
//
//둘째 줄에는 두 수 사이에 있는 수를 오름차순으로 출력한다.

let n = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
let nCount = n[1] - n[0] - 1

func solve() {
    if nCount <= 0 {
        print(0)
        return
    }
    let nums = [Int](repeating: n[0], count: nCount)

    print(nCount)
    var i = 0
    nums.forEach {
        i += 1
        print($0 + i, terminator: " ")
    }
}

solve()

//8 14
//답
//5
//9 10 11 12 13
