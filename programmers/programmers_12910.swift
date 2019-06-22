//
//  programmers_12910.swift
//  algo
//
//  Created by 이재은 on 22/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12910 나누어 떨어지는 숫자 배열
// array의 각 element 중 divisor로 나누어 떨어지는 값을 오름차순으로 정렬한 배열을 반환
// divisor로 나누어 떨어지는 element가 하나도 없다면 배열에 -1을 담아 반환
//arr은 자연수를 담은 길이 1 이상인 배열입니다.
//정수 i, j에 대해 i ≠ j 이면 arr[i] ≠ arr[j] 입니다.
//divisor는 자연수입니다.

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let result = arr.filter { $0 % divisor == 0 }.sorted()
    if result == [] {
        return [-1]
    }
    return result
}
