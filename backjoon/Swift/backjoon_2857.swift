//
//  backjoon_2857.swift
//  algo
//
//  Created by 이재은 on 2021/02/09.
//  Copyright © 2021 이재은. All rights reserved.
//

import Foundation

//backjoon FBI 2857
//
//문제
//5명의 요원 중 FBI 요원을 찾는 프로그램을 작성하시오.
//
//FBI요원은 요원의 첩보원명에 FBI가 들어있다.
//
//입력
//5개 줄에 요원의 첩보원명이 주어진다. 첩보원명은 알파벳 대문자, 숫자 0~9, 대시 (-)로만 이루어져 있으며, 최대 10글자이다.
//
//출력
//첫째 줄에 FBI 요원을 출력한다. 이때, 해당하는 요원이 몇 번째 입력인지를 공백으로 구분하여 출력해야 하며, 오름차순으로 출력해야 한다. 만약 FBI 요원이 없다면 "HE GOT AWAY!"를 출력한다.

var fbi = [Int]()
for i in 1...5 {
    if readLine()!.contains("FBI") {
        fbi.append(i)
    }
}

if fbi.count == 0 {
    print("HE GOT AWAY!")
} else {
    print(fbi.map { String($0) }.joined(separator: " "))
}

//47-FBI
//BOND-007
//RF-FBI18
//MARICA-13
//13A-FBILL
//답
//1 3 5
