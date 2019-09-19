//
//  backjoon_6679.swift
//  algo
//
//  Created by 이재은 on 20/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 싱기한 네자리 숫자 6679

// 싱기한 네자리 숫자란, [1000,9999]인 10진수 숫자중에서,  다음의 조건을 만족하는 숫자를 말한다.
//
// 숫자를 10진수, 12진수, 16진수로 나타낸 다음, 각각의 숫자에 대해, 각 숫자의 자리수를 더했을 때, 세 값이 모두 같아야 한다.
// 여러분은 싱기한 네자리 숫자를 모두 출력해야 한다.
//
// 입력
// 입력은 주어지지 않는다.
//
// 출력
// 싱기한 네자리 숫자를 오름차순으로 한줄에 하나씩 출력한다.

for i in 2992...9999 {
    let deci = String(i).map { Int(String($0))! }.reduce(0,+)
    let duo = String(i, radix: 12).map { Int(String($0), radix: 12)! }.reduce(0,+)
    if deci == duo {
        let hexa = String(i, radix: 16).map { Int(String($0), radix: 16)! }.reduce(0,+)
        if deci == hexa {
            print(i)
        }
    }
}
