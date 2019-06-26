//
//  programmers_12947.swift
//  algo
//
//  Created by 이재은 on 27/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmer 12947 하샤드 수
// 양의 정수 x가 하샤드 수이려면 x의 자릿수의 합으로 x가 나누어져야 합니다.
// 자연수 x를 입력받아 x가 하샤드 수인지 아닌지 검사
// x는 1 이상, 10000 이하인 정수

func solution(_ x:Int) -> Bool {
    var sum = String(x).compactMap(){ $0.wholeNumberValue }.reduce(0, +)
    return x % sum == 0 ? true : false
}

print(solution(13))
