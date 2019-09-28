//
//  backjoon_11652.swift
//  algo
//
//  Created by 이재은 on 28/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

//backjoon 카드 11652
//
//준규는 숫자 카드 N장을 가지고 있다. 숫자 카드에는 정수가 하나 적혀있는데, 적혀있는 수는 -262보다 크거나 같고, 262보다 작거나 같다.
//
//준규가 가지고 있는 카드가 주어졌을 때, 가장 많이 가지고 있는 정수를 구하는 프로그램을 작성하시오. 만약, 가장 많이 가지고 있는 정수가 여러 가지라면, 작은 것을 출력한다.
//
//입력
//첫째 줄에 준규가 가지고 있는 숫자 카드의 개수 N (1 <= N <= 1000000)이 주어진다. 둘째 줄부터 N개 줄에는 숫자 카드에 적혀있는 정수가 주어진다.
//
//출력
//첫째 줄에 준규가 가장 많이 가지고 있는 정수를 출력한다.

let n = Int(readLine()!)!
var numCount = [Int: Int]()

for _ in 0..<n {
    let num = Int(readLine()!)!
    if numCount[num] == nil {
        numCount[num] = 1
    } else {
        numCount[num]! += 1
    }
}

let maxNumber = numCount.sorted { a, b in
    if a.value == b.value {
        return a.key < b.key
    } else {
        return a.value > b.value
    }
}
print(maxNumber[0].key)

//5
//1
//2
//1
//2
//1
//답
//1
//
//6
//1
//2
//1
//2
//1
//2
//답
//1
