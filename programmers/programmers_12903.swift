//
//  programmers_12903.swift
//  algo
//
//  Created by 이재은 on 21/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12903 가운데 글자 가져오기
// 단어 s의 가운데 글자를 반환
// 단어의 길이가 짝수면 가운데 두글자를 반환
// s는 길이가 1 이상, 100이하인 스트링

// 풀이 1
func solution(_ s:String) -> String {
    let text = Array(s).map{String($0)}
    var centerText = ""
    let result = Int(text.count/2)
    if text.count % 2 == 0 {
        centerText = text[result-1] + text[result]
    } else {
        centerText = text[result]
    }
    return centerText
}

// 풀이 2
func solution(_ s:String) -> String {
    if s.count % 2 == 0 {
        return String(Array(s)[s.count/2-1...s.count/2])
    } else {
        return String(Array(s)[s.count/2])
    }
}

solution("abcde")
solution("qwer")
