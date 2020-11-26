//
//  backjoon_16430.swift
//  algo
//
//  Created by 이재은 on 2020/11/26.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon 제리와 톰 16430
//
//문제
//톰은 마트에서 치즈 1kg 을 사서 집으로 돌아왔습니다.
//
//그런데 톰이 한눈을 판 사이 제리가 와서 A/B kg 만큼 훔쳐갔습니다.
//
//제리가 치즈를 훔쳐 간 후 톰이 가지고 있는 치즈의 무게는 얼마인가요?
//
//입력
//첫 번째 줄에 두 정수 A, B (1 ≤ A < B ≤ 9) 가 주어집니다.
//
//A와 B는 서로소임이 보장됩니다.
//
//출력
//정답을 기약분수로 표현했을 때 P/Q kg 이라면 첫 번째 줄에 P와 Q를 공백을 사이에 두고 출력합니다.

let AB = readLine()!.split(separator: " ").compactMap { Int($0) }
print("\(AB[1] - AB[0]) \(AB[1])")

//2 7
//답
//5 7
//
//5 8
//답
//3 8
