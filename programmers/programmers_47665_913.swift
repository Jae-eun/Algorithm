//
//  programmers_47665_913.swift
//  algo
//
//  Created by 이재은 on 24/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 47665_913 스킬 체크 테스트 1 - 1
// 정수를 저장한 배열, arr 에서 가장 작은 수를 제거한 배열을 리턴하는 함수, solution을 완성해주세요. 단,  리턴하려는 배열이 빈 배열인 경우엔 배열에 -1을 채워 리턴하세요. 예를들어 arr이 [4,3,2,1]인 경우는  [4,3,2]를 리턴 하고, [10]면 [-1]을 리턴 합니다.
//
// 제한 조건
// arr은 길이 1 이상인 배열입니다.
// 인덱스 i, j에 대해 i ≠ j이면 arr[i] ≠ arr[j] 입니다.

func solution(_ arr: [Int]) -> [Int] {
    let minIndex = arr.index(of: arr.min()!)!
    var array = arr
    array.remove(at: minIndex)

    return array.isEmpty ? [-1] : array
}

print(solution([4,3,2,1]))
print(solution([10]))
// arr    return
// [4,3,2,1]    [4,3,2]
// [10]    [-1]
