//
//  backjoon_2693.swift
//  algo
//
//  Created by 이재은 on 30/07/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 2693 N번째 큰 수
// 배열 A가 주어졌을 때, N번째 큰 값을 출력하는 프로그램을 작성하시오.
//
// 배열 A의 크기는 항상 10이고, 자연수만 가지고 있다. N은 항상 3이다.
//
// 입력
// 첫째 줄에 테스트 케이스의 개수 T(1 <= T <= 1,000)가 주어진다. 각 테스트 케이스는 한 줄로 이루어져 있고, 배열 A의 원소 10개가 공백으로 구분되어 주어진다. 이 원소는 1보다 크거나 같고, 1,000보다 작거나 같은 자연수이다.

let testcase = Int(readLine()!)!
for _ in 0..<testcase {
    var input = readLine()!.split(separator: " ").map{ Int($0)! }.sorted(by: >)
    print(input[2])
}
