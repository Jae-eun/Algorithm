//
//  backjoon_10992.swift
//  algo
//
//  Created by 이재은 on 09/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 10992 별 찍기 - 17

// 예제를 보고 규칙을 유추한 뒤에 별을 찍어 보세요.
//
// 입력
// 첫째 줄에 N(1 ≤ N ≤ 100)이 주어진다.
//
// 출력
// 첫째 줄부터 N번째 줄까지 차례대로 별을 출력한다.

let n = Int(readLine()!)!
var star = String()
for i in 1...n {
    star = ""
    star += String(repeating: " ", count: n-i)
    star += "*"
    if i != 1 && i != n {
        star += String(repeating: " ", count: 2 * i - 3)
        star += String(repeating: "*", count: 1)
    } else if i == n {
        star += String(repeating: "*", count: (n-1) * 2)
    }
    print(star)
}


//1
//*
//
//2
// *
//***
//
//3
//  *
// * *
//*****
//
//4
//   *
//  * *
// *   *
//*******
