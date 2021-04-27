//
//  backjoon_1085.swift
//  algo
//
//  Created by 이재은 on 2021/04/27.
//  Copyright © 2021 이재은. All rights reserved.
//

//backjoon 직사각형에서 탈출 1085
//
//문제
//한수는 지금 (x, y)에 있다. 직사각형의 왼쪽 아래 꼭짓점은 (0, 0)에 있고, 오른쪽 위 꼭짓점은 (w, h)에 있다. 직사각형의 경계선까지 가는 거리의 최솟값을 구하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 x, y, w, h가 주어진다.
//
//출력
//첫째 줄에 문제의 정답을 출력한다.
//
//제한
//1 ≤ w, h ≤ 1,000
//1 ≤ x ≤ w-1
//1 ≤ y ≤ h-1
//x, y, w, h는 정수

let xywh = readLine()!.split(separator: " ").compactMap { Int($0) }
let (x, y, w, h) = (xywh[0], xywh[1], xywh[2], xywh[3])
print(min(x, y, w - x, h - y))

//6 2 10 3
//답
//1
