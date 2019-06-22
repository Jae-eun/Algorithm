//
//  programmers_12937.swift
//  algo
//
//  Created by 이재은 on 22/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12937 짝수와 홀수
// 정수 num이 짝수일 경우 Even을 반환하고 홀수인 경우 Odd를 반환
// num은 int 범위의 정수
// 0은 짝수

func solution(_ num:Int) -> String {
    return num % 2 == 0 ? "Even" : "Odd"
}
