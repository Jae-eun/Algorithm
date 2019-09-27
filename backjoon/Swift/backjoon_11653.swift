//
//  backjoon_11653.swift
//  algo
//
//  Created by 이재은 on 27/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 소인수분해 11653
//
// 정수 N이 주어졌을 때, 소인수분해하는 프로그램을 작성하시오.
//
// 입력
// 첫째 줄에 정수 N (1 ≤ N ≤ 10,000,000)이 주어진다.
//
// 출력
// N의 소인수분해 결과를 한 줄에 하나씩 오름차순으로 출력한다.

var n = Int(readLine()!)!

//if n == 1 {
//    print("")
//}

while n != 1 {
    for i in 2...n {
        while n % i == 0 {
            print(i)
            n /= i
        }
    }
}

//72
//답
//2
//2
//2
//3
//3
//
//9991
//답
//97
//103
//
//6
//답
//2
//3
