//
//  backjoon_15792.swift
//  algo
//
//  Created by 이재은 on 25/07/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 15792 A/B - 2
// 두 정수 A와 B를 입력받은 다음, A/B를 출력하는 프로그램을 작성하시오.
//
// 첫째 줄에 A와 B가 주어진다. (0 < A, B ≤ 10,000)
//
// 첫째 줄에 A/B를 출력한다.

let input = readLine()!.split(separator: " ").map{ Double($0)! }
print(input[0] / input[1])
