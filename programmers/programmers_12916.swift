//
//  programmers_12916.swift
//  algo
//
//  Created by 이재은 on 18/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12916 문자열 내 p와 y의 개수
// s에 'p'의 개수와 'y'의 개수를 비교해 같으면 True, 다르면 False를 return
// 대문자와 소문자는 구별하지 않는다.
// 문자열 s의 길이 : 50 이하의 자연수,
// 알파벳으로만 이루어져 있습니다.

// 풀이 1
let s = "pPoooyY"

func solution(_ s:String) -> Bool
{
    var ans: Bool = false
    var text = s
    text = text.lowercased()
    var pCount = 0
    var yCount = 0
    
    for char in text {
        if char == "p" {
            pCount += 1
        } else if char == "y" {
            yCount += 1
        }
    }
    if pCount == yCount {
        ans = true
    }
    
    return ans
}

solution(s)


// 풀이 2
func solution(_ s:String) -> Bool
{
    return s.lowercased().filter { $0 == "p" }.count == s.lowercased().filter { $0 == "y" }.count
}
