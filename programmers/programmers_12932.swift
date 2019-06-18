//
//  programmers_12932.swift
//  algo
//
//  Created by 이재은 on 19/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// 자연수 뒤집어 배열로 만들기
// 자연수 n을 뒤집어 각 자리 숫자를 원소로 가지는 배열 형태로 리턴
// n은 10,000,000,000이하인 자연수

func solution(_ n:Int64) -> [Int] {
    let number = String(n).compactMap{ Int(String($0)) }
    return number.reversed()
}

solution(12345)
