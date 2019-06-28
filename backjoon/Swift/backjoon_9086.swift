//
//  backjoon_9086.swift
//  algo
//
//  Created by 이재은 on 29/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 9086 문자열
// 문자열을 입력으로 주면 문자열의 첫 글자와 마지막 글자를 출력
// 입력의 첫 줄에는 테스트 케이스의 개수 T(1 ≤ T ≤ 10)가 주어진다. 각 테스트 케이스는 한 줄에 하나의 문자열이 주어진다. 문자열은 알파벳 A~Z 대문자로 이루어지며 알파벳 사이에 공백은 없으며 문자열의 길이는 1000보다 작다.

let testcase = Int(readLine()!)!
for _ in 0..<testcase {
    let input = readLine()!
    print(input.first!, terminator: "")
    print(input.last!)
}
