//
//  backjoon_11816.swift
//  algo
//
//  Created by 이재은 on 2020/09/03.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

// backjoon 11816 8진수, 10진수, 16진수

//문제
//정수 X가 주어진다. 정수 X는 항상 8진수, 10진수, 16진수 중에 하나이다.
//
//8진수인 경우에는 수의 앞에 0이 주어지고, 16진수인 경우에는 0x가 주어진다.
//
//X를 10진수로 바꿔서 출력하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 X가 주어진다. X는 10진수로 바꿨을 때, 1,000,000보다 작거나 같은 자연수이다. 16진수인 경우 알파벳은 소문자로만 이루어져 있다.
//
//출력
//첫째 줄에 입력받은 X를 10진수로 바꿔서 출력한다.

var X = readLine()!
if X.hasPrefix("0x") {
    let num = X.dropFirst(2)
    print(Int(num, radix: 16)!)
} else if X.hasPrefix("0") {
    print(Int(X, radix: 8)!)
} else {
    print(X)
}


//10
//답
//10
//
//010
//답
//8
//
//0x10
//답
//16
//
//0x3f6
//답
//1014
