//
//  programmers_12933.swift
//  algo
//
//  Created by 이재은 on 18/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12933 정수 내림차순으로 배치하기
// 입력 받은 정수 n을 각 자릿수에서 큰 수부터 작은 순으로 정렬한 새 정수를 리턴하기
// n은 1 이상 8000000000 이하인 자연수

let n: Int64 = 118372

func solution(_ n:Int64) -> Int64 {
    var number: [Int] = String(n).compactMap{ $0.wholeNumberValue } // Int(String($0))
    var result: String
    
    number.sort(by: >)
    result = number.map{ String($0) }.reduce(""){ $0 + $1 }
    
    return Int64(result)!
}
solution(n)
