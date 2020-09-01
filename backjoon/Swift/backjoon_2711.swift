//
//  backjoon_2711.swift
//  algo
//
//  Created by 이재은 on 2020/09/02.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon 오타맨 고창영 2711

//문제
//고창영은 맨날 오타를 낸다. 창영이가 오타를 낸 문장과 오타를 낸 위치가 주어졌을 때, 오타를 지운 문자열을 출력하는 프로그램을 작성하시오.
//
//창영이는 오타를 반드시 1개만 낸다.
//
//입력
//첫째 줄에 테스트 케이스의 개수 T(1<=T<=1,000)가 주어진다. 각 테스트 케이스는 한 줄로 구성되어 있다. 첫 숫자는 창영이가 오타를 낸 위치이고, 두 번째 문자열은 창영이가 친 문자열이다. 문자열의 가장 첫 문자는 1번째 문자이고, 문자열의 길이는 80을 넘지 않고, 대문자로만 이루어져 있다. 오타를 낸 위치는 문자열 길이보다 작거나 같다.
//
//출력
//각 테스트 케이스에 대해 오타를 지운 문자열을 출력한다.

let T = Int(readLine()!)!
for _ in 0..<T {
    let input = readLine()!.split(separator: " ")
    let index = Int(input[0])! - 1
    var text = input[1].map { String($0) }
    text.remove(at: index)
    print(text.joined())
}

//4
//4 MISSPELL
//1 PROGRAMMING
//7 CONTEST
//3 BALLOON
//답
//MISPELL
//ROGRAMMING
//CONTES
//BALOON
