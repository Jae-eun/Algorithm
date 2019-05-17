//
//  backjoon_3052.swift
//  algo
//
//  Created by 이재은 on 18/05/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 3052 나머지
// 주어진 10개의 숫자를 42로 나눴을 때 서로 다른 나머지가 몇 개 있는지 출력
// 숫자는 1,000보다 작거나 같고 음수가 아닌 정수

var remainder = Set<Int>()

for _ in 0..<10 {
    remainder.insert(Int(readLine()!)! % 42)
}
print(remainder.count)
