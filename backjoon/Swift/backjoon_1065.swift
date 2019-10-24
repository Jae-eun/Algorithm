//
//  backjoon_1065.swift
//  algo
//
//  Created by 이재은 on 25/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

//backjoon 한수 1065
//
//어떤 양의 정수 X의 자리수가 등차수열을 이룬다면, 그 수를 한수라고 한다. 등차수열은 연속된 두 개의 수의 차이가 일정한 수열을 말한다. N이 주어졌을 때, 1보다 크거나 같고, N보다 작거나 같은 한수의 개수를 출력하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 1,000보다 작거나 같은 자연수 N이 주어진다.
//
//출력
//첫째 줄에 1보다 크거나 같고, N보다 작거나 같은 한수의 개수를 출력한다.

let X = Int(readLine()!)!
var count = 99

if X < 100 {
    count = X
} else {
    for n in 100...X {
        let digits = String(n).compactMap{ Int(String($0))! }
        if digits[0] - digits[1] == digits[1] - digits[2] {
            count += 1
        }
    }
}
print(count)

//110
//답
//99
//
//1
//답
//1
//
//210
//답
//105
//
//1000
//답
//144
