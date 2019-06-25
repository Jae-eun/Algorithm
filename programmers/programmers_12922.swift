//
//  programmers_12922.swift
//  algo
//
//  Created by 이재은 on 26/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12922 수박수박수박수박수박수?
// 길이가 n이고, 수박수박수박수....와 같은 패턴을 유지하는 문자열 리턴
// n은 길이 10,000이하인 자연수

// 풀이 1
func solution(_ n:Int) -> String {
    var result = ""
    for i in 0..<n {
        if i % 2 == 0 {
            result += "수"
        } else {
            result += "박"
        }
    }
    return result
}

// 풀이 2
func solution(_ n:Int) -> String {
    return "\(String(repeating: "수박", count: n / 2))\(n % 2 == 0 ? "" : "수")"
}
