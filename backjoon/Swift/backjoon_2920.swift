//
//  backjoon_2920.swift
//  algo
//
//  Created by 이재은 on 14/05/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 2920 음계
// 다장조는 c d e f g a b C, c는 1, d는 2... C는 8
// 1부터 8까지 차례대로 연주한다면 ascending, 8부터 1까지 차례대로 연주한다면 descending, 둘 다 아니라면 mixed
// 연주한 순서가 주어졌을 때, 판별

var input = readLine()!
var result = ""
if input == "1 2 3 4 5 6 7 8" {
    result = "ascending"
} else if input == "8 7 6 5 4 3 2 1" {
    result = "descending"
} else {
    result = "mixed"
}
print(result)
