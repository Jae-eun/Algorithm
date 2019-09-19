//
//  backjoon_10768.swift
//  algo
//
//  Created by 이재은 on 20/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 특별한 날 10768
//
// 2월 18일은 올해 CCC에 있어서 특별한 날이다.
//
// 사용자로부터 정수인 월과 일을 입력받아 날짜가 2월 18일인지 전인지 후인지를 출력하는 프로그램이다.
//
// 만약 날짜가 2월 18일 전이면, "Before"을 출력한다. 만약 날짜가 2월 18일 후면, "After"을 출력한다. 만약 2월 18일이라면 "Special" 을 출력한다.
//
// 입력
// 입력은 두 개의 정수가 각 줄에 걸쳐 입력된다. 이 정수들은 2015년의 날짜에 포함된다.
//
// 첫 번째 줄은 1에서 12사이의 월을 입력한다.
//
// 두 번째 줄은 1에서 31사이의 그 달에 들어있는 날짜를 입력한다 .
//
// 출력
// 마지막 줄에 "Before", "After"나 "Special"을 출력한다.

let month = Int(readLine()!)!
let day = Int(readLine()!)!

if month < 2 {
    print("Before")
} else if month == 2 {
    if day < 18 {
        print("Before")
    } else if day > 18 {
        print("After")
    } else {
        print("Special")
    }
} else {
    print("After")
}

//1
//7
//답 Before
//
//8
//31
//답 After
//
//2
//18
//답 Special
