//
//  backjoon_2675.swift
//  algo
//
//  Created by 이재은 on 15/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 문자열 반복 2675

// 문자열 S를 입력받은 후에, 각 문자를 R번 반복해 새 문자열 P를 만든 후 출력하는 프로그램을 작성하시오. 즉, 첫 번째 문자를 R번 반복하고, 두 번째 문자를 R번 반복하는 식으로 P를 만들면 된다. S에는 QR Code "alphanumeric" 문자만 들어있다.
//
// QR Code "alphanumeric" 문자는 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\$%*+-./: 이다.
//
// 입력
// 첫째 줄에 테스트 케이스의 개수 T(1 ≤ T ≤ 1,000)가 주어진다. 각 테스트 케이스는 반복 횟수 R(1 ≤ R ≤ 8), 문자열 S가 공백으로 구분되어 주어진다. S의 길이는 적어도 1이며, 20글자를 넘지 않는다.
//
// 출력
// 각 테스트 케이스에 대해 P를 출력한다.

let n = Int(readLine()!)!

for _ in 0..<n {
    var text = ""
    let input = readLine()!.split(separator: " ")
    input[1].forEach { text.append(String.init(repeatElement($0, count: Int(input[0])!))) }
    print(text)
}


//2
//3 ABC
//5 /HTP
//
//AAABBBCCC
/////HHHHHTTTTTPPPPP
