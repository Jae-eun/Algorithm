//
//  programmers_12930.swift
//  algo
//
//  Created by 이재은 on 25/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12930 이상한 문자 만들기
// 문자열 s는 한 개 이상의 단어로 구성되어 있습니다. 각 단어는 하나 이상의 공백문자로 구분되어 있습니다.
// 각 단어의 짝수번째 알파벳은 대문자로, 홀수번째 알파벳은 소문자로 바꾼 문자열을 리턴
// 문자열 전체의 짝/홀수 인덱스가 아니라, 단어(공백을 기준)별로 짝/홀수 인덱스를 판단해야합니다.
// 첫 번째 글자는 0번째 인덱스로 보아 짝수번째 알파벳으로 처리

func solution(_ s:String) -> String {
    var result = ""
    var isEven = true
    for char in s {
        if char == " " {
            result += " "
            isEven = true
        } else {
            if isEven {
                result += char.uppercased()
            } else {
                result += char.lowercased()
            }
            isEven.toggle()
        }
    }
    return result
}
