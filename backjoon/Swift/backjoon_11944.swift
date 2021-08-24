//
//  backjoon_11944.swift
//  algo
//
//  Created by 이재은 on 2021/08/25.
//  Copyright © 2021 이재은. All rights reserved.
//

import Foundation

//backjoon NN 11944

//문제
//문제는 매우 간단하다. N을 N번 출력하는 프로그램을 작성하여라. 다만, 답이 길어지는 경우 답의 앞 M자리만 출력한다.
//
//입력
//첫 번째 줄에는 N, M이 주어진다. (1 ≤ N, M ≤ 2016)
//
//출력
//N을 N번 출력한다. 만약 답이 길어지면 답의 앞 M자리를 출력한다.

let NM = readLine()!.split(separator: " ").compactMap { Int($0) }
let text = String(repeating: String(NM[0]), count: NM[0])

if text.count > NM[1] {
    let endIndex = text.index(text.startIndex, offsetBy: NM[1])
    print(text[text.startIndex..<endIndex])
} else {
    print(text)
}

//20 16
//답
//2020202020202020
