//
//  programmers_12944.swift
//  algo
//
//  Created by 이재은 on 22/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12944 평균 구하기
// 정수를 담고 있는 배열 arr의 평균값을 리턴
// arr은 길이 1 이상, 100 이하인 배열
// arr의 원소는 -10,000 이상 10,000 이하인 정수

func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0){ $0 + $1 }) / Double(arr.count)
}
