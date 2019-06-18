//
//  backjoon_2417.swift
//  algo
//
//  Created by 이재은 on 18/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 2417 정수 제곱근
// 정수 n(0 ≤ n < 263)이 주어지면 그 수의 정수 제곱근 구하기
// q의 제곱 ≥ n인 가장 작은 음이 아닌 정수 q를 출력
// ceil() : 소수점 아래의 숫자가 있으면 소수점 아래를 다 버리고 정수부에 1을 더해주는 함수
// floor() : 소수점 아래를 버리는 함수
// round() : 소수점 아래를 반올림하는 함수
// sqrt() : 제곱근을 구하는 함수

let input = Double(readLine()!)!
print(Int(ceil(sqrt(input))))
