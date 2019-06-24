//
//  programmers_12926.swift
//  algo
//
//  Created by 이재은 on 24/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12926 시저 암호
// 어떤 문장의 각 알파벳을 일정한 거리만큼 밀어서 다른 알파벳으로 바꾸는 암호화 방식
// 예를 들어 AB는 1만큼 밀면 BC가 되고, 3만큼 밀면 DE가 됩니다. z는 1만큼 밀면 a가 됩니다.
// 문자열 s와 거리 n을 입력받아 s를 n만큼 민 암호문을 만드는 함수
// 공백은 아무리 밀어도 공백
// s는 알파벳 소문자, 대문자, 공백으로만, 길이는 8000이하
// n은 1 이상, 25이하인 자연수

func solution(_ s:String, _ n:Int) -> String {
    var password = ""
    for char in s.unicodeScalars {
        if char.value == 32 {
            password += " "
        } else {
            print(char.value)
            var ascii = UnicodeScalar(char.value + UInt32(n))!
            if (char.value < 97 && ascii > UnicodeScalar(90)) || ascii > UnicodeScalar(122) {
                ascii = UnicodeScalar(UInt32(ascii) - 26)!
            }
            password += String(ascii)
        }
    }
    return password
}
