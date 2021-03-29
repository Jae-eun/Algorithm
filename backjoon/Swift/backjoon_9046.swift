//
//  backjoon_9046.swift
//  algo
//
//  Created by 이재은 on 2021/03/29.
//  Copyright © 2021 이재은. All rights reserved.
//

//backjoon 복호화 9046
//
//문제
//암호학에서 치환 암호(substitution cipher)란, 평문에 들어있는 각각의 문자를 주어진 치환 방법으로 암호화하는 방법 중 하나다.
//
//가장 단순한 방법은 평문의 알파벳을 암호문의 알파벳으로 대치시켜 치환시키는 것이다.
//
//예를 들어, 아래와 같은 알파벳 대치표가 주어졌다고 하자.
//
//평문 알파벳 대치표 : abcdefghijklmnopqrstuvwxyz
//암호문 알파벳 대치표 : wghuvijxpqrstacdebfklmnoyz
//위에 주어진 치환 방법을 통해 암호화하면 평문 "hello there"은 "xvssc kxvbv"가 된다.
//
//한 가지 흥미로운 점은 영어 문법 특성상, 알파벳 'e'가 다른 영문 알파벳에 비해 자주 쓰인다는 것이다.
//
//즉, 암호문 알파벳 대치표 없이 암호문을 복호화하려 할 때, 암호문 알파벳 빈도수를 체크하면 암호문 알파벳 빈도수 중 가장 빈번하게 나타나는 알파벳이 'e'라는 사실을 유추해볼 수 있다.
//
//위 방법으로 암호문 알파벳의 빈도수를 체크하고, 가장 빈번하게 나타나는 문자를 출력하는 프로그램을 작성하면 된다.
//
//만약 주어진 암호문에서 가장 빈번하게 나타나는 문자가 여러 개일 경우, 그 빈번한 문자 중 어느 것이 평문 알파벳 'e'를 가리키는지 확실하게 알 수 없기 때문에 "모르겠음"을 의미하는 '?'를 출력하면 된다.
//
//입력
//입력의 T(1 ≤ T ≤ 20)는 테스트 케이스로, 입력 제일 상단에 주어진다. 각각의 테스트 케이스는 한 줄마다 소문자와 공백으로 이루어진 영어 문장이 주어진다. 이 문장의 길이는 적어도 1이상이며 255이하다.
//
//출력
//각각의 테스트 케이스에 대해, 가장 빈번하게 나타나는 문자를 출력하거나 빈번하게 나타나는 문자가 여러 개일 경우 '?'를 출력한다.

let T = Int(readLine()!)!
var textCount: [Character: Int] = [:]

for _ in 0..<T {
    textCount = [:]
    let plain = readLine()!.filter { $0 != " " }
    plain.forEach {
        textCount[$0, default: 0] += 1
    }

    let maxText = textCount.max { $0.value < $1.value }
    if textCount.values.filter({ $0 == maxText!.value }).count == 1 {
        print(maxText!.key)
    } else {
        print("?")
    }
}

//3
//asvdge ef ofmdofn
//xvssc kxvbv
//hull full suua pmlu
//답
//f
//v
//?
