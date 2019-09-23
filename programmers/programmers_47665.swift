//
//  programmers_47665.swift
//  algo
//
//  Created by 이재은 on 24/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 47665 스킬 체크 테스트 1 - 1
// 자연수 N이 주어지면, N의 각 자릿수의 합을 구해서 return 하는 solution 함수를 만들어 주세요.
// 예를들어 N = 123이면 1 + 2 + 3 = 6을 return 하면 됩니다.
//
// 제한사항
// N의 범위 : 100,000,000 이하의 자연수

func solution(_ n: Int) -> Int {
    let answer: Int = String(n).compactMap{ $0.wholeNumberValue }.reduce(0, +)
    return answer
}

print(solution(123))
print(solution(987))
// N    answer
// 123    6
// 987    24
