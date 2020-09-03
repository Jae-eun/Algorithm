//
//  backjoon_5218.swift
//  algo
//
//  Created by 이재은 on 2020/09/03.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon 알파벳 거리 5218

//문제
//길이가 같은 두 단어가 주어졌을 때, 각 단어에 포함된 모든 글자의 알파벳 거리를 구하는 프로그램을 작성하시오.
//
//두 글자 x와 y 사이의 알파벳 거리를 구하려면, 먼저 각 알파벳에 숫자를 할당해야 한다. 'A'=1, 'B' = 2, ..., 'Z' = 26. 그 다음 y ≥ x인 경우에는 y-x, y < x인 경우에는 (y+26) - x가 알파벳 거리가 된다.
//
//예를 들어, 'B'와 'D' 사이의 거리는 4 - 2 = 2이고, 'D'와 'B' 사이의 거리는 (2+26) - 4 = 24이다.
//
//입력
//첫째 줄에 테스트 케이스의 수 (< 100)가 주어진다. 각 테스트 케이스는 한 줄로 이루어져 있고, 두 단어가 공백으로 구분되어져 있다. 단어의 길이는 4보다 크거나 같고, 20보다 작거나 같으며, 알파벳 대문자로만 이루어져 있다.
//
//출력
//각 테스트 케이스 마다 각 글자의 알파벳 거리를 공백으로 구분해 출력한다.

extension Character {
    var asciiValue: Int {
        get {
            let s = String(self).unicodeScalars
            return Int(s[s.startIndex].value)
        }
    }
}

let T = Int(readLine()!)!
for _ in 0..<T {
    let words = readLine()!.split(separator: " ")
    let first = Array(words[0]), second = Array(words[1])
    var distances = [Int]()
    for i in 0..<first.count {
        let result = second[i].asciiValue - first[i].asciiValue
        distances.append(result >= 0 ? result : 26 + result)
    }
    print("Distances: \(distances.map { String($0) }.joined(separator: " "))")
}

//5
//AAAA ABCD
//ABCD AAAA
//DARK LOKI
//STRONG THANOS
//DEADLY ULTIMO
//답
//Distances: 0 1 2 3
//Distances: 0 25 24 23
//Distances: 8 14 19 24
//Distances: 1 14 9 25 1 12
//Distances: 17 7 19 5 1 16
