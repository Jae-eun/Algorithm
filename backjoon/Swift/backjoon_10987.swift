//
//  backjoon_10987.swift
//  algo
//
//  Created by 이재은 on 21/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 모음의 개수 10987

//알파벳 소문자로만 이루어진 단어가 주어진다. 이때, 모음(a, e, i, o, u)의 개수를 출력하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 단어가 주어진다. 단어의 길이는 1보다 크거나 같고, 100보다 작거나 같으며, 알파벳 소문자로만 이루어져 있다.
//
//출력
//첫째 줄에 모음의 개수를 출력한다.

let vowel = ["a", "e", "i", "o", "u"]
let word = readLine()!
var count = 0

for char in word {
    if vowel.contains(String(char)) {
        count += 1
    }
}
print(count)


//baekjoon
//답
//4
