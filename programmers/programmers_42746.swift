//
//  programmers_42746.swift
//  algo
//
//  Created by 이재은 on 2021/04/25.
//  Copyright © 2021 이재은. All rights reserved.
//

//programmers 42746 가장 큰 수

//문제 설명
//0 또는 양의 정수가 주어졌을 때, 정수를 이어 붙여 만들 수 있는 가장 큰 수를 알아내 주세요.
//
//예를 들어, 주어진 정수가 [6, 10, 2]라면 [6102, 6210, 1062, 1026, 2610, 2106]를 만들 수 있고, 이중 가장 큰 수는 6210입니다.
//
//0 또는 양의 정수가 담긴 배열 numbers가 매개변수로 주어질 때, 순서를 재배치하여 만들 수 있는 가장 큰 수를 문자열로 바꾸어 return 하도록 solution 함수를 작성해주세요.
//
//제한 사항
//numbers의 길이는 1 이상 100,000 이하입니다.
//numbers의 원소는 0 이상 1,000 이하입니다.
//정답이 너무 클 수 있으니 문자열로 바꾸어 return 합니다.

func solution(_ numbers: [Int]) -> String {
    let sortedNum = numbers
        .sorted { Int("\($0)\($1)")! > Int("\($1)\($0)")! }
        .map { String($0) }
        .reduce("", +)
    return sortedNum.first == "0" ? "0" : sortedNum
}

print(solution([6, 10, 2])) // "6210"
print(solution([3, 30, 34, 5, 9])) // "9534330"
print(solution([0, 0])) // "0"
print(solution([0, 1])) // "10"
