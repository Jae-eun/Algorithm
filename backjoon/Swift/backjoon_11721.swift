//
//  backjoon_11721.swift
//  algo
//
//  Created by 이재은 on 29/12/2018.
//  Copyright © 2018 이재은. All rights reserved.
//

import Foundation

// backjoon 11721 열 개씩 끊어 출력하기
// 주어진 글자를 10글자씩 한 줄로 출력

// 방법 1
let input = Array(readLine() ?? "")
for item in 0...input.count/10 {
    if (item+1)*10 > input.count {
        let items = input[(item*10)..<input.count]
        print(String(items))
    } else {
        print(String(input[(item*10)..<(item+1)*10]))
    }
}


// 방법 2
let input = readLine()!
var i = 0
for index in input {
    print(index, terminator: "")
    i += 1
    if i == 10 {
        print("")
        i = 0
    }
}
