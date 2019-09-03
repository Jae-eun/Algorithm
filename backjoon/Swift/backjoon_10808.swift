//
//  backjoon_10808.swift
//  algo
//
//  Created by 이재은 on 03/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 알파벳 개수 10808
// 알파벳 소문자로만 이루어진 단어 S가 주어진다. 각 알파벳이 단어에 몇 개가 포함되어 있는지 구하는 프로그램을 작성하시오.
//
// 입력
// 첫째 줄에 단어 S가 주어진다. 단어의 길이는 100을 넘지 않으며, 알파벳 소문자로만 이루어져 있다.
//
// 출력
// 단어에 포함되어 있는 a의 개수, b의 개수, …, z의 개수를 공백으로 구분해서 출력한다.

let input = readLine()!
var alphabetCount = [Int](repeating: 0, count: 26)
for alphabet in input.utf16 {
    let index = Int(alphabet - 97)
    alphabetCount[index] += 1
}
print(alphabetCount.map { String($0) }.joined(separator: " "))

// baekjoon

// 답 1 1 0 0 1 0 0 0 0 1 1 0 0 1 2 0 0 0 0 0 0 0 0 0 0 0
