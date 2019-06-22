//
//  programmers_12935.swift
//  algo
//
//  Created by 이재은 on 22/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12935 제일 작은 수 제거하기
// 정수를 저장한 배열, arr 에서 가장 작은 수를 제거한 배열을 리턴하는 함수
// 단, 리턴하려는 배열이 빈 배열인 경우엔 [-1]을 리턴
// arr은 길이 1 이상인 배열
// 인덱스 i, j에 대해 i ≠ j이면 arr[i] ≠ arr[j]

func solution(_ arr:[Int]) -> [Int] {
    var result = arr
    result.remove(at: arr.index(of: arr.min()!)!)
    
    return result.isEmpty ? [-1] : result
}
