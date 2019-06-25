//
//  programmers_12917.swift
//  algo
//
//  Created by 이재은 on 26/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12917 문자열 내림차순으로 배치하기
// 문자열 s에 나타나는 문자를 큰것부터 작은 순으로 정렬해 새로운 문자열을 리턴
// s는 영문 대소문자로만 구성, 대문자는 소문자보다 작은 것으로 간주
// str은 길이 1 이상인 문자열

func solution(_ s:String) -> String {
    return String(s.sorted(by: >))
}
