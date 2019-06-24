//
//  programmers_12934.swift
//  algo
//
//  Created by 이재은 on 24/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12934 정수 제곱근 판별
// 임의의 정수 n에 대해, n이 어떤 정수 x의 제곱인지 아닌지 판단
// n이 정수 x의 제곱이라면 x+1의 제곱을 리턴
// n이 정수 x의 제곱이 아니라면 -1을 리턴
// n은 1이상, 50000000000000 이하인 정수

func solution(_ n:Int64) -> Int64 {
    let x = sqrt(Double(n))
    let result = pow(x+1, 2)
    
    if ceil(result) == result {
        return Int64(result)
    } else {
        return -1
    }
}
