//
//  backjoon_11021.swift
//  algo
//
//  Created by 이재은 on 25/07/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 11021 A + B - 7

// 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
//
// 첫째 줄에 테스트 케이스의 개수 T가 주어진다.
//
// 각 테스트 케이스는 한 줄로 이루어져 있으며, 각 줄에 A와 B가 주어진다. (0 < A, B < 10)
//
// 각 테스트 케이스마다 "Case #x: "를 출력한 다음, A+B를 출력한다. 테스트 케이스 번호는 1부터 시작한다.

let testcase = Int(readLine()!)!
for i in 1...testcase {
    let input = readLine()!.split(separator: " ").map { Int($0)! }.reduce(0){ $0 + $1 }
    print("Case #\(i): \(input)")
}
