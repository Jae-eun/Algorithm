//
//  programmers_12951.swift
//  algo
//
//  Created by 이재은 on 29/08/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12951 JadenCase 문자열 만들기
//
// JadenCase란 모든 단어의 첫 문자가 대문자이고, 그 외의 알파벳은 소문자인 문자열입니다. 문자열 s가 주어졌을 때, s를 JadenCase로 바꾼 문자열을 리턴하는 함수, solution을 완성해주세요.
//
// 제한 조건
// s는 길이 1 이상인 문자열입니다.
// s는 알파벳과 공백문자(" ")로 이루어져 있습니다.
// 첫 문자가 영문이 아닐때에는 이어지는 영문은 소문자로 씁니다. ( 첫번째 입출력 예 참고 )

func solution(_ s: String) -> String {
    var result = ""
    var isFirst = true
    for i in 0..<s.count {
        let index = s.index(s.startIndex, offsetBy: i)
        if isFirst {
            result.append(s[index].uppercased())
        } else {
            result.append(s[index].lowercased())
        }
        if s[index] == " " {
            isFirst = true
        } else {
            isFirst = false
        }
    }
    return result
}

print(solution("3people unFollowed me"))
print(solution("for the last week"))

// s    return
// 3people unFollowed me    3people Unfollowed Me
// for the last week    For The Last Week
