//
//  backjoon_1212.swift
//  algo
//
//  Created by 이재은 on 2021/02/04.
//  Copyright © 2021 이재은. All rights reserved.
//

//backjoon 1212 8진수 2진수
//
//문제
//8진수가 주어졌을 때, 2진수로 변환하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 8진수가 주어진다. 주어지는 수의 길이는 333,334을 넘지 않는다.
//
//출력
//첫째 줄에 주어진 수를 2진수로 변환하여 출력한다. 수가 0인 경우를 제외하고는 반드시 1로 시작해야 한다.

let octal = readLine()!.compactMap { $0.wholeNumberValue }
var binary = String()

for (index, value) in octal.enumerated() {
    let num = String(value, radix: 2)
    if index != 0 {
        if num.count == 1 {
            binary += "00"
        } else if num.count == 2 {
            binary += "0"
        }
    }
    binary += num
}
print(binary)

//314
//답
//11001100
