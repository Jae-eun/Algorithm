//
//  backjoon_11365.swift
//  algo
//
//  Created by 이재은 on 06/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

//backjoon !밀비 급일 11365
//당신은 길을 가다가 이상한 쪽지를 발견했다. 그 쪽지에는 암호가 적혀 있었는데, 똑똑한 당신은 암호가 뒤집으면 해독된다는 것을 발견했다.
//
//이 암호를 해독하는 프로그램을 작성하시오.
//
//입력
//한 줄에 하나의 암호가 주어진다. 암호의 길이는 500을 넘지 않는다.
//
//마지막 줄에는 "END"가 주어진다. (END는 해독하지 않는다.)
//
//출력
//각 암호가 해독된 것을 한 줄에 하나씩 출력한다.

while true {
    let input = readLine()!
    if input == "END" {
        break
    }
    let secret = input.split(separator: " ").map { String($0.reversed()) }
    secret.reversed().forEach {
        print($0, terminator: " ")
    }
    print()
}

// 풀이 2
while let input = readLine() {
    if input == "END" { break }
    print(String(input.reversed()))
}


//!edoc doog a tahW
//noitacitsufbo
//erafraw enirambus detcirtsernu yraurbeF fo tsrif eht no nigeb ot dnetni eW
//lla sees rodroM fo drol eht ,ssertrof sih nihtiw delaecnoC
//END
//답
//What a good code!
//obfustication
//We intend to begin on the first of February unrestricted submarine warfare
//Concealed within his fortress, the lord of Mordor sees all
