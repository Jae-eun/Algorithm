//
//  backjoon_8958.swift
//  algo
//
//  Created by 이재은 on 01/01/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 8958 OX 퀴즈
// OX 퀴즈의 결과가 주어짐
// 그 문제의 점수는 연속된 O의 개수일 때, 총 점수 구하기
// 첫째 줄 테스트케이스 개수, 0보다 크고 80보다 작은 문자열 테스트케이스

// 풀이 1
let n = Int(readLine() ?? "") ?? 0
var result = Array(repeating: 0, count: n)
for j in 0..<n {
    var score = 0
    let input = readLine() ?? ""
    var array = input.characters.map{ String($0) }
    for i in 0..<array.count {
        if array[i] == "O" {
            score += 1
            result[j] += score
        } else {
            score = 0
        }
    }
}
for j in 0..<n {
    print(result[j])
}

// 풀이 2
let number = Int(readLine()!)!

for _ in 0..<number {
    let testcase = readLine()!
    var score = 0
    var result = 0
    
    for test in testcase {
        if test == "O" {
            score += 1
            result += score
        } else {
            score = 0
        }
    }
    print(result)
}
