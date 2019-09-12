//
//  backjoon_4504.swift
//  algo
//
//  Created by 이재은 on 13/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 배수 찾기 4504
//
// 정수 n(0 < n < 1000)과 수의 목록이 주어졌을 때, 목록에 들어있는 수가 n의 배수인지 아닌지를 구하는 프로그램을 작성하시오.
//
// 입력
// 첫째 줄에 n이 주어진다. 다음 줄부터 한 줄에 한 개씩 목록에 들어있는 수가 주어진다. 이 수는 0보다 크고, 10,000보다 작다.  목록은 0으로 끝난다.
//
// 출력
// 목록에 있는 수가 n의 배수인지 아닌지를 구한 뒤 예제 출력처럼 출력한다.

let n = Int(readLine()!)!

while true {
    let input = Int(readLine()!)!
    if input == 0 {
        break
    }
    if input % n == 0 {
        print("\(input) is a multiple of \(n).")
    } else {
        print("\(input) is NOT a multiple of \(n).")
    }
}

// 3
// 1
// 7
// 99
// 321
// 777
// 0
//
// 1 is NOT a multiple of 3.
// 7 is NOT a multiple of 3.
// 99 is a multiple of 3.
// 321 is a multiple of 3.
// 777 is a multiple of 3.

