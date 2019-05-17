//
//  backjoon_10430.swift
//  algo
//
//  Created by 이재은 on 29/12/2018.
//  Copyright © 2018 이재은. All rights reserved.
//

import Foundation

// backjoon 10430 나머지
// 첫째 줄에 A, B, C 주어짐. (2 ≤ A, B, C ≤ 10000)
// 첫째 줄에 (A+B)%C, 둘째 줄에 (A%C + B%C)%C, 셋째 줄에 (A×B)%C, 넷째 줄에 (A%C × B%C)%C를 출력

// 풀이 1

let input = readLine() ?? ""
let inputArr = input.split(separator: " ")
let a = Int(inputArr[0]) ?? 0
let b = Int(inputArr[1]) ?? 0
let c = Int(inputArr[2]) ?? 0
print((a+b)%c)
print((a%c + b%c) % c)
print((a*b)%c)
print(((a%c)*(b%c))%c)

// 풀이 2

let input = readLine()!.split(separator: " ").map(){ Int($0)! }
let remainderAC = input[0] % input[2]
let remainderBC = input[1] % input[2]

print((input[0] + input[1]) % input[2])
print((remainderAC + remainderBC) % input[2])
print((input[0] * input[1]) % input[2])
print((remainderAC * remainderBC) % input[2])
