//
//  backjoon_2309.swift
//  algo
//
//  Created by 이재은 on 29/12/2018.
//  Copyright © 2018 이재은. All rights reserved.
//
// 일곱 난쟁이

import Foundation

// backjoon 2309 일곱 난쟁이
// 9명의 키가 주어짐. 일곱 난쟁이의 키의 합은 100
// 일곱 난쟁이 7명을 찾아 오름차순으로 키를 출력

// 풀이 1

var input = Array<Int>()
var sum = 0
var index1 = 0
var index2 = 0

for _ in 0..<9 {
    input.append(Int(readLine() ?? "") ?? 0)
}
for i in 0..<9 {
    sum += input[i]
}
sum -= 100
for i in 0..<8 {
    for j in i+1..<9 {
        if (input[i] + input[j] == sum) {
            index1 = i
            index2 = j
        }
    }
}
input.remove(at: index2)
input.remove(at: index1)
input = input.sorted()
for i in 0..<7 {
    print(input[i])
}

// 풀이 2

var height = [Int]()
var totalHeight = 0
for i in 0..<9 {
    height.append(Int(readLine()!)!)
    totalHeight += height[i]
}
for i in 0..<8 {
    for j in i+1..<9 {
        if height[i] + height[j] == totalHeight - 100 {
            height.remove(at: j)
            height.remove(at: i)
            break
        }
    }
    if height.count == 7 {
        break
    }
}
height = height.sorted()
for i in 0..<height.count {
    print(height[i])
}
