//
//  backjoon_1225.swift
//  fight
//
//  Created by 이재은 on 2020/09/08.
//  Copyright © 2020 jaeeun. All rights reserved.
//

import Foundation

//backjoon 이상한 곱셈 1225
//
//문제
//A*B를 계산하다 지겨워진 형택이는 A*B를 새로운 방법으로 정의하려고 한다.
//
//A에서 한 자리를 뽑고 * B에서 임의로 한 자리를 뽑아 곱한다.
//
//의 가능한 모든 조합 (A가 n자리, B가 m자리 수라면 총 가능한 조합은 n*m개)을 더한 수로 정의하려고 한다.
//
//예를 들어 121*34는
//
//1*3 + 1*4 + 2*3 + 2*4 + 1*3 + 1*4 = 28
//
//이 된다. 이러한 형택이의 곱셈 결과를 구하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 A와 B가 주어진다. 주어지는 두 수는 모두 10,000자리를 넘지 않는다.
//
//출력
//첫째 줄에 형택이의 곱셈 결과를 출력한다.

let input = readLine()!.split(separator: " ").map { String($0) }
var A = input[0].compactMap { $0.wholeNumberValue }
var B = input[1].compactMap { $0.wholeNumberValue }
var result = 0

for i in 0..<A.count {
    for j in 0..<B.count {
        result += A[i] * B[j]
    }
}
print(result)

//123 45
//답
//54
//
