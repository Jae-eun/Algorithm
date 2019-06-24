//
//  programmers_12928.swift
//  algo
//
//  Created by 이재은 on 24/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12928 약수의 합
//자연수 n을 입력받아 n의 약수를 모두 더한 값을 리턴하는 함수, solution을 완성해주세요.
//n은 0 이상 3000이하인 자연수입니다.

func solution(_ n:Int) -> Int {
    var divisor = [Int]()
    if n == 0 {
        return 0
    }
    for i in 1...n {
        if n % i == 0 {
            divisor.append(i)
        }
    }
    return divisor.reduce(0, +)
}
