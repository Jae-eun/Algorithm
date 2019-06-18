//
//  programmers_12919.swift
//  algo
//
//  Created by 이재은 on 19/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12919 서울에서 김서방 찾기
// String형 배열 seoul의 element중 Kim의 위치 x를 찾아, "김서방은 x에 있다" 반환
// seoul은 길이 1 이상, 1000 이하인 배열
// seoul의 원소는 길이 1 이상, 20 이하인 문자열
// Kim은 반드시 seoul 안에 포함

let seoul = ["Jane", "Kim"]

func solution(_ seoul:[String]) -> String {
    let x = seoul.index(of: "Kim")!
    return "김서방은 \(x)에 있다"
}

solution(seoul)
