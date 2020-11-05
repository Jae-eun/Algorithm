//
//  backjoon_1008.swift
//  algo
//
//  Created by 이재은 on 2020/11/05.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon 1008 A/B

//문제
//두 정수 A와 B를 입력받은 다음, A/B를 출력하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 A와 B가 주어진다. (0 < A, B < 10)
//
//출력
//첫째 줄에 A/B를 출력한다. 실제 정답과 출력값의 절대오차 또는 상대오차가 10-9 이하이면 정답이다.

let AB = readLine()!.split(separator: " ").map { Double($0)! }
print(AB[0]/AB[1])

//1 3
//답
//0.33333333333333333333333333333333
//
//4 5
//답
//0.8
