//
//  backjoon_1676.swift
//  algo
//
//  Created by 이재은 on 10/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 1676 팩토리얼 0의 개수
// N!에서 뒤에서부터 처음 0이 아닌 숫자가 나올 때까지 0의 개수를 구하는 프로그램을 작성하시오.
//
// 입력
// 첫째 줄에 N이 주어진다. (0 ≤ N ≤ 500)
//
// 출력
// 첫째 줄에 구한 0의 개수를 출력한다.
//

// 방법 1
func carryAll(_ arr: [Int]) -> [Int] {
    var result = [Int]()
    var carry = 0

    for value in arr.reversed() {
        let total = value + carry
        let digit = total % 10
        carry = total / 10
        result.append(digit)
    }

    while carry > 0 {
        let digit = carry % 10
        carry = carry / 10
        result.append(digit)
    }

    return result.reversed()
}

func factorial(_ n: Int) -> String {
    var result = [1]
    for i in 1...n {
        result = result.map { $0 * i }
        result = carryAll(result)
    }
    return result.map(String.init).joined()
}

let input = Int(readLine()!)!

var number = ""
var count = 0
var result = 0

if input > 0 {
    number = factorial(input)
}

for i in number.reversed() {
    if i != "0" {
        break
    } else {
        count += 1
    }
}
print(count)

// 10
// 답 2

// 방법 2
let input = Int(readLine()!)!
var count = 0

if input > 0 {
    for i in 1...input {
        if i % 5 == 0 {
            count += 1
        }
        if i % 25 == 0 {
            count += 1
        }
        if i % 125 == 0 {
            count += 1
        }
    }
}
print(count)
