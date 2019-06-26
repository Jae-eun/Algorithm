//
//  programmers_12969.swift
//  algo
//
//  Created by 이재은 on 26/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12969 직사각형 별찍기
// 표준 입력으로 두 개의 정수 n과 m이 주어집니다.
// 별(*) 문자를 이용해 가로의 길이가 n, 세로의 길이가 m인 직사각형 형태를 출력
// n과 m은 각각 1000 이하인 자연수

import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

for _ in 0..<b {
    print(String(repeating: "*", count: a))
}
