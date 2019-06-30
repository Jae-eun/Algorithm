//
//  backjoon_3053.swift
//  algo
//
//  Created by 이재은 on 01/07/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 3053 택시 기하학
// 19세기 독일 수학자 헤르만 민코프스키는 비유클리드 기하학 중 택시 기하학을 고안했다.
// 택시 기하학에서 두 점 T1(x1,y1), T2(x2,y2) 사이의 거리는 다음과 같이 구할 수 있다.
// D(T1,T2) = |x1-x2| + |y1-y2|
// 두 점 사이의 거리를 제외한 나머지 정의는 유클리드 기하학에서의 정의와 같다.
// 따라서 택시 기하학에서 원의 정의는 유클리드 기하학에서 원의 정의와 같다.
// 원: 평면 상의 어떤 점에서 거리가 일정한 점들의 집합
// 반지름 R이 주어졌을 때, 유클리드 기하학에서 원의 넓이와, 택시 기하학에서 원의 넓이 구하기
// 첫째 줄에 반지름 R이 주어진다. R은 10,000보다 작거나 같은 자연수
// 정답과의 오차는 0.0001까지 허용한다.

let R = Double(readLine()!)!

let euclid = R * R * Double.pi
let taxi = 2 * R * R
print(String(format: "%.6f", euclid))
print(String(format: "%.6f", taxi))
