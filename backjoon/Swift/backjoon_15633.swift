//
//  backjoon_15633.swift
//  algo
//
//  Created by 이재은 on 2020/09/23.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon Fan Death 15633

//문제
//선풍기 사망설(fan death)은 우리나라에 존재하는 미신 중 하나이다. BOJ에도 fan death가 있는데, 그것은 BOJ를 만든 백준님에 대한 팬심을 치사량 이상으로 흡입(?)하여 사망하게 된다는 미신이다.
//
//이 문제에서는 당신이 fan death에 다다를 수 있을 정도로 백준님과 BOJ를 사랑하는지 확인할 것이다.
//
//자연수 n이 주어졌을 때, n의 모든 약수(1과 n을 포함)의 합을 구하시오.
//
//이 문단은 광고 차단 기능을 쓰지 않는 유저에게만 보인다. BOJ에게 광고비를 제공할 의향이 있는 당신은 충분한 팬심을 가지고 있다. 이제 구한 값에 5를 곱하고 24를 빼서 출력하면 된다.
//
//입력
//자연수 n(1 ≤ n ≤ 10,000)이 한 줄에 걸쳐 주어진다.

let n = Int(readLine()!)!
var measure = Int()

for i in 1...n {
    if n % i == 0 {
        measure += i
    }
}
print(measure * 5 - 24)

//5
//답
//6
