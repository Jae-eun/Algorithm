//
//  programmers_12911.swift
//  algo
//
//  Created by 이재은 on 29/08/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 다음 큰 숫자 12911
//
// 자연수 n이 주어졌을 때, n의 다음 큰 숫자는 다음과 같이 정의 합니다.
//
// 조건 1. n의 다음 큰 숫자는 n보다 큰 자연수 입니다.
// 조건 2. n의 다음 큰 숫자와 n은 2진수로 변환했을 때 1의 갯수가 같습니다.
// 조건 3. n의 다음 큰 숫자는 조건 1, 2를 만족하는 수 중 가장 작은 수 입니다.
// 예를 들어서 78(1001110)의 다음 큰 숫자는 83(1010011)입니다.
//
// 자연수 n이 매개변수로 주어질 때, n의 다음 큰 숫자를 return 하는 solution 함수를 완성해주세요.
//
// 제한 사항
// n은 1,000,000 이하의 자연수 입니다.

// 풀이 1
func solution(_ n:Int) -> Int {
    var answer: Int = 0
    let oneCountN = String(n, radix: 2).filter { "1".contains($0)}.count
    var num = n + 1
    while true {
        let oneCountNum = String(num, radix: 2).filter { "1".contains($0) }.count
        if oneCountN == oneCountNum {
            answer = num
            break
        }
        num += 1
    }
    return answer
}

// 풀이 2
func solution(_ n:Int) -> Int {
    var num = n + 1
    while n.nonzeroBitCount != num.nonzeroBitCount {
        num += 1
    }
    return num
}

print(solution(78))
print(solution(15))

//n    result
//78    83
//15    23
