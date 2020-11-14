//
//  backjoon_1834.swift
//  algo
//
//  Created by 이재은 on 2020/11/14.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon 나머지와 몫이 같은 수 1834
//
//문제
//N으로 나누었을 때 나머지와 몫이 같은 모든 자연수의 합을 구하는 프로그램을 작성하시오. 예를 들어 N=3일 때, 나머지와 몫이 모두 같은 자연수는 4와 8 두 개가 있으므로, 그 합은 12이다.
//
//입력
//첫째 줄에 2,000,000 이하의 자연수 N이 주어진다.
//
//출력
//첫 줄에 구하고자 하는 수를 출력한다.

let N = Int(readLine()!)!
var sum = 0
for i in 1..<N {
    sum += (N + 1) * i
}
print(sum)

//3
//답
//12
