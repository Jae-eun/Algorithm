//
//  programmers_42883.swift
//  algo
//
//  Created by 이재은 on 2021/05/05.
//  Copyright © 2021 이재은. All rights reserved.
//

//programmers 42883 큰 수 만들기

//문제 설명
//어떤 숫자에서 k개의 수를 제거했을 때 얻을 수 있는 가장 큰 숫자를 구하려 합니다.
//
//예를 들어, 숫자 1924에서 수 두 개를 제거하면 [19, 12, 14, 92, 94, 24] 를 만들 수 있습니다. 이 중 가장 큰 숫자는 94 입니다.
//
//문자열 형식으로 숫자 number와 제거할 수의 개수 k가 solution 함수의 매개변수로 주어집니다. number에서 k 개의 수를 제거했을 때 만들 수 있는 수 중 가장 큰 숫자를 문자열 형태로 return 하도록 solution 함수를 완성하세요.
//
//제한 조건
//number는 1자리 이상, 1,000,000자리 이하인 숫자입니다.
//k는 1 이상 number의 자릿수 미만인 자연수입니다.
//입출력 예
//number    k    return
//"1924"    2    "94"
//"1231234"    3    "3234"
//"4177252841"    4    "775841"

func solution(_ number: String, _ k: Int) -> String {
    let numbers = number.compactMap { Int(String($0)) }
    let resultLength = number.count - k
    var result = String()
    var index = 0
    var tempIndex = 0

    for i in 0..<resultLength {
        var temp = -1
        for j in index...k + i {
            if numbers[j] > temp {
                temp = numbers[j]
                tempIndex = j
            }
            if temp == 9 {
                break
            }
        }
        index = tempIndex + 1
        result += String(temp)
    }
    return result
}

print(solution("1924", 2)) // "94"
print(solution("1231234", 3)) // "3234"
print(solution("4177252841", 4)) // "775841"
print(solution("1924", 1)) // "924"
print(solution("19249", 2)) // "949"
print(solution("4177252841", 1)) // "477252841"
print(solution("4177002841", 5)) // "77841"
