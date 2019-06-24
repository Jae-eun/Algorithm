//
//  programmers_12931.swift
//  algo
//
//  Created by 이재은 on 24/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12931 자릿수 더하기
// 자연수 N이 주어지면, N의 각 자릿수의 합을 구해서 리턴
// N의 범위 : 100,000,000 이하의 자연수

func solution(_ n:Int) -> Int
{
    let number = String(n).compactMap{ $0.wholeNumberValue }
    return number.reduce(0, +)
}
