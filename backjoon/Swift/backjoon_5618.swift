//
//  backjoon_5618.swift
//  algo
//
//  Created by 이재은 on 30/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 5618 공약수
// 자연수 n개가 주어진다. 이 자연수의 공약수를 모두 구하기
// 첫째 줄에 n(2 또는 3)이 주어진다.
// 둘째 줄에는 공약수를 구해야 하는 자연수 n개가 주어진다. 모든 자연수는 10의 8승 이하이다.
// 입력으로 주어진 n개 수의 공약수를 한 줄에 하나씩 증가하는 순서대로 출력

let n = Int(readLine()!)!
var number = readLine()!.split(separator: " ").map{ Int($0)! }.sorted()
number.append(0)

for i in 1...number[0] {
    if number[0] % i == 0 && number[1] % i == 0 && number[2] % i == 0 {
        print(i)
    }
}
