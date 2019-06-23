//
//  programmers_12948.swift
//  algo
//
//  Created by 이재은 on 24/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12948 핸드폰 번호 가리기
// 전화번호가 문자열 phone_number로 주어졌을 때, 뒷 4자리를 제외한 나머지 숫자를 전부 *으로 가린 문자열을 리턴
// s는 길이 4 이상, 20이하인 문자열

// 풀이 1
func solution(_ phone_number:String) -> String {
    var hiddenNumber = ""
    let lowerBound = phone_number.index(phone_number.startIndex, offsetBy: phone_number.count - 4)
    let upperBound = phone_number.index(phone_number.startIndex, offsetBy: phone_number.count)
    let number = phone_number[lowerBound..<upperBound]
    
    for _ in 0..<phone_number.count - 4 {
        hiddenNumber += "*"
    }
    return hiddenNumber + number
}

// 풀이 2

func solution(_ phone_number:String) -> String {
    
    return String("\(String(repeating: "*", count: phone_number.count - 4))\(phone_number.suffix(4))")
}
