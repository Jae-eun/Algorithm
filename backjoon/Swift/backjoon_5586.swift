//
//  backjoon_5586.swift
//  algo
//
//  Created by 이재은 on 25/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

//backjoon JOI와 IOI 5586
//
//입력으로 주어지는 문자열에서 연속으로 3개의 문자가 JOI 또는 IOI인 곳이 각각 몇 개 있는지 구하는 프로그램을 작성하시오. 문자열을 알파벳 대문자로만 이루어져 있다. 예를 들어, 아래와 같이 "JOIOIOI"에는 JOI가 1개, IOI가 2개 있다.
//
//입력
//첫째 줄에 알파벳 10000자 이내의 문자열이 주어진다.
//
//출력
//첫째 줄에 문자열에 포함되어 있는 JOI의 개수, 둘째 줄에 IOI의 개수를 출력한다.

let text = readLine()!.map { String($0) }
var count = [Int](repeating: 0, count: 2)

for i in 0..<text.count - 2 {
    if text[i+1] == "O" && text[i+2] == "I" {
        if text[i] == "J" {
            count[0] += 1
        } else if text[i] == "I" {
            count[1] += 1
        }
    }
}
count.forEach {
    print($0)
}

//JOIOIOIOI
//답
//1
//3

