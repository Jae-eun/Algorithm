//
//  programmers_42839.swift
//  algo
//
//  Created by 이재은 on 2021/05/01.
//  Copyright © 2021 이재은. All rights reserved.
//

import Foundation

// programmers 소수 찾기 42839

// 한자리 숫자가 적힌 종이 조각이 흩어져있습니다. 흩어진 종이 조각을 붙여 소수를 몇 개 만들 수 있는지 알아내려 합니다.

// 각 종이 조각에 적힌 숫자가 적힌 문자열 numbers가 주어졌을 때, 종이 조각으로 만들 수 있는 소수가 몇 개인지 return 하도록 solution 함수를 완성해주세요.

// 제한사항
// numbers는 길이 1 이상 7 이하인 문자열입니다.
// numbers는 0~9까지 숫자만으로 이루어져 있습니다.
// 013은 0, 1, 3 숫자가 적힌 종이 조각이 흩어져있다는 의미입니다.

//입출력 예
//numbers    return
//"17"    3
//"011"    2
//입출력 예 설명
//예제 #1
//[1, 7]으로는 소수 [7, 17, 71]를 만들 수 있습니다.
//
//예제 #2
//[0, 1, 1]으로는 소수 [11, 101]를 만들 수 있습니다.
//
//11과 011은 같은 숫자로 취급합니다.

func solution(_ numbers: String) -> Int {
    let combNum = Set(combination(numbers.count, numbers.map { String($0) })
                        .compactMap { Int($0) })

    return combNum.filter { isPrime($0) }.count
}

func combination(_ length: Int, _ array: [String]) -> Set<String> {
    if length == 1 {
        return Set(array)
    }

    var result = Set<String>()
    for i in 0..<array.count {
        let current = array[i]
        var tempArray = array
        tempArray.remove(at: i)

        let comb = combination(length - 1, tempArray)
        let combArr = comb.compactMap { current + $0 }
        result = result.union(comb)
        result = result.union(combArr)
    }
    return result
}

func isPrime(_ n: Int) -> Bool {
    if n < 2 { return false }

    for i in 2..<n {
        if n % i == 0 {
            return false
        }
    }
    return true
}

print(solution("17")) // 3
print(solution("011")) // 2
