//
//  backjoon_13752.swift
//  algo
//
//  Created by 이재은 on 22/07/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 13752 히스토그램
// 히스토그램은 데이터를 시각적으로 표현한 것이다.
// 막대로 구성되며 각 막대의 길이는 데이터 양의 크기를 나타낸다.
// 일부 데이터가 주어지면 히스토그램을 생성하시오.
//
// 첫 번째 줄에는 테스트 케이스의 개수 n (1 ≤ n ≤ 100)이 주어진다.
// 다음 n 개의 줄에는 각 히스토그램의 크기 k (1 ≤ k ≤ 80)가 주어진다.
//
// 각 테스트 케이스에 대해서 히스토그램의 크기 k와 동일한 수의 '='를 출력한다. '='사이에 공백은 존재하지 않는다.

// 풀이 1
let testcase = Int(readLine()!)!
for _ in 0..<testcase {
    var text = ""
    let number = Int(readLine()!)!
    for _ in 0..<number {
        text += "="
    }
    print(text)
}

// 풀이 2
let testcase = Int(readLine()!)!
for _ in 0..<testcase {
    let number = Int(readLine()!)!
    print(String(repeating: "=", count: number))
}
