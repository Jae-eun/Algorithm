//
//  backjoon_4458.swift
//  algo
//
//  Created by 이재은 on 2020/09/09.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon 첫 글자를 대문자로 4458

//문제
//문장을 읽은 뒤, 줄의 첫 글자를 대문자로 바꾸는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 줄의 수 N이 주어진다. 다음 N개의 줄에는 문장이 주어진다. 각 문장에 들어있는 글자의 수는 30을 넘지 않는다. 모든 줄의 첫 번째 글자는 알파벳이다.
//
//출력
//각 줄의 첫글자를 대문자로 바꾼뒤 출력한다.

let N = Int(readLine()!)!
for _ in 0..<N {
    var text = readLine()!.map { String($0) }
    text[0] = text[0].uppercased()
    print(text.joined())
}

//5
//powdered Toast Man
//skeletor
//Electra Woman and Dyna Girl
//she-Ra Princess of Power
//darth Vader
//
//Powdered Toast Man
//Skeletor
//Electra Woman and Dyna Girl
//She-Ra Princess of Power
//Darth Vader
