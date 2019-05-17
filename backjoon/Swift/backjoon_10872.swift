//
//  backjoon_10872.swift
//  algo
//
//  Created by 이재은 on 18/05/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 10872 팩토리얼
// 주어진 정수 N(0<=N<=12)의 N!을 출력

let input = Int(readLine()!)!
var result = 1
if input == 0 {
    result = 1
} else {
    for num in 1...input {
        result *= num
    }
}
print(result)
