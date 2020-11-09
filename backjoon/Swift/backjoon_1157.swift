//
//  backjoon_1157.swift
//  algo
//
//  Created by 이재은 on 09/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 단어 공부 1157
// 알파벳 대소문자로 된 단어가 주어지면, 이 단어에서 가장 많이 사용된 알파벳이 무엇인지 알아내는 프로그램을 작성하시오. 단, 대문자와 소문자를 구분하지 않는다.
//
// 입력
// 첫째 줄에 알파벳 대소문자로 이루어진 단어가 주어진다. 주어지는 단어의 길이는 1,000,000을 넘지 않는다.
//
// 출력
// 첫째 줄에 이 단어에서 가장 많이 사용된 알파벳을 대문자로 출력한다. 단, 가장 많이 사용된 알파벳이 여러 개 존재하는 경우에는 ?를 출력한다.

let word = readLine()!.uppercased()
var alphabetCount = [Character: Int]()
var count = 0

for i in word {
    count = alphabetCount[i] ?? 0
    alphabetCount[i] = count + 1
}

let maxAlphabet = alphabetCount.max { $0.value <= $1.value }!
let maxCount = alphabetCount.filter { $0.value == maxAlphabet.value }.count

if maxCount == 1 {
    print(maxAlphabet.key)
} else {
    print("?")
}


//Mississipi
//?
//
//zZa
//Z
//
//z
//Z
//
//baaa
//A
