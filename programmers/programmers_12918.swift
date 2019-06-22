//
//  programmers_12918.swift
//  algo
//
//  Created by 이재은 on 22/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12918 문자열 다루기 기본
// 문자열 s의 길이가 4 혹은 6이고, 숫자로만 구성돼있는지 확인
// s는 길이 1 이상, 길이 8 이하인 문자열

func solution(_ s:String) -> Bool {
    if (s.count == 4 || s.count == 6) {
        if Int(s) != nil {
            return true
        }
    }
    return false
}
