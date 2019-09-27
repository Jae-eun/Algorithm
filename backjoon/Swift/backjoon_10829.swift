//
//  backjoon_10829.swift
//  algo
//
//  Created by 이재은 on 27/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 이진수 변환 10829
// 자연수 N이 주어진다. N을 이진수로 바꿔서 출력하는 프로그램을 작성하시오.
//
// 입력
// 첫째 줄에 자연수 N이 주어진다. (1 ≤ N ≤ 100,000,000,000,000)
//
// 출력
// N을 이진수로 바꿔서 출력한다. 이진수는 0으로 시작하면 안 된다.

print(String(Int(readLine()!)!, radix: 2))

// 53
// 답
// 110101
