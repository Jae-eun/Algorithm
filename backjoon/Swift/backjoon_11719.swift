//
//  backjoon_11719.swift
//  algo
//
//  Created by 이재은 on 07/05/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 11719 그대로 출력하기 2
// 입력 받은대로 그대로 출력 (최대 100줄, 100글자 이내, 빈 줄, 공백)

// 풀이 1
var input = readLine()
if let input = input {
    print(input)
}
while (input != nil) {
    input = readLine()
    if let input = input {
        print(input)
    }
}

// 풀이 2
while let input = readLine() {
    print(input)
}
