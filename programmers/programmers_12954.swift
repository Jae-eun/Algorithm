//
//  programmers_12954.swift
//  algo
//
//  Created by 이재은 on 27/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12954 x만큼 간격이 있는 n개의 숫자
// 정수 x와 자연수 n을 입력 받아, x부터 시작해 x씩 증가하는 숫자를 n개 지니는 리스트를 리턴
// x는 -10000000 이상, 10000000 이하인 정수
// n은 1000 이하인 자연수

// 풀이 1
func solution(_ x:Int, _ n:Int) -> [Int64] {
    var result = [Int64]()
    for i in 1...n {
        result.append(Int64(x*i))
    }
    return result
}

// 풀이 2
func solution(_ x: Int, _ n: Int) -> [Int64] {
    return Array(1...n).map { Int64($0 * x) }
}

