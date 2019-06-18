//
//  programmers_12912.swift
//  algo
//
//  Created by 이재은 on 19/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12912 두 정수 사이의 합
// 주어진 두 정수 a, b 사이에 속한 모든 정수의 합을 리턴
// a와 b는 -10,000,000 이상 10,000,000 이하인 정수
// a와 b의 대소관계는 정해져 있지 않다.

// 풀이 1
func solution(_ a:Int, _ b:Int) -> Int64 {
    var sum = 0
    if a > b {
        for num in b...a {
            sum += num
        }
    } else {
        for num in a...b {
            sum += num
        }
    }
    return Int64(sum)
}
solution(5, 3)

// 풀이 2

func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64(Array(a > b ? b...a : a...b).reduce(0, +))
}

