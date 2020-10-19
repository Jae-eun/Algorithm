//
//  backjoon_14909.swift
//  algo
//
//  Created by 이재은 on 2020/10/19.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon 14909 양수 개수 세기
//
//문제
//주어진 N개의 정수 중에서 양의 정수의 개수를 출력하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 최대 1,000,000개의 정수가 주어진다. 입력으로 주어지는 정수는 -1,000,000보다 크거나 같고, 1,000,000보다 작거나 같다.

let n = readLine()!.split(separator: " ").map { Int($0)! }
print(n.filter { $0 > 0 }.count)

//3 9 11 32 8 2 6
//답
//7
//
//-2 0 21 3 8 17 32 -8 7 0
//답
//6
//
//0
//답
//0
