//
//  programmers_12915.swift
//  algo
//
//  Created by 이재은 on 26/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12915 문자열 내 마음대로 정렬하기
// 문자열로 구성된 리스트 strings와, 정수 n이 주어졌을 때, 각 문자열의 인덱스 n번째 글자를 기준으로 오름차순 정렬
// strings는 길이 1 이상, 50이하인 배열
// strings의 원소는 소문자 알파벳으로, 길이 1 이상, 100이하인 문자열
// 모든 strings의 원소의 길이는 n보다 큽니다.
// 인덱스 1의 문자가 같은 문자열이 여럿 일 경우, 사전순으로 앞선 문자열이 앞쪽에 위치합니다.

func solution(_ strings:[String], _ n:Int) -> [String] {
    var result = strings
    let sortIndex = result[0].index(result[0].startIndex, offsetBy: n)
    
    result = result.sorted(by: {
        if $0[sortIndex] == $1[sortIndex] {
            return $0 < $1
        }
        return $0[sortIndex] < $1[sortIndex]
    })
    return result
}
