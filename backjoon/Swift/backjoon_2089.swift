//
//  backjoon_2089.swift
//  algo
//
//  Created by 이재은 on 27/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

//backjoon -2진수 2089
//
//-2진법은 부호 없는 2진수로 표현이 된다. 2진법에서는 20, 21, 22, 23이 표현 되지만 -2진법에서는 (-2)0 = 1, (-2)1 = -2, (-2)2 = 4, (-2)3 = -8을 표현한다. 10진수로 1부터 표현하자면 1, 110, 111, 100, 101, 11010, 11011, 11000, 11001 등이다.
//
//10진법의 수를 입력 받아서 -2진수를 출력하는 프로그램을 작성하시오.
//
//입력
//첫 줄에 10진법으로 표현된 수 N(-2,000,000,000≤N≤2,000,000,000)이 주어진다.
//
//출력
//-2진법 수를 출력한다.

var n = Double(readLine()!)!
var binary = [Int]()

if n == 0 {
    print(0)
}

while n != 0 {
    binary.append(abs(Int(n) % -2))
    n = ceil(Double(n / -2))
}

binary.reversed().forEach {
    print($0, terminator: "")
}


//-13
//답
//110111
