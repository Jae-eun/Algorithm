//
//  backjoon_1427.swift
//  algo
//
//  Created by 이재은 on 11/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 소트인사이드 1427

// 배열을 정렬하는 것은 쉽다. 수가 주어지면, 그 수의 각 자리수를 내림차순으로 정렬해보자.
//
// 입력
// 첫째 줄에 정렬하고자하는 수 N이 주어진다. N은 1,000,000,000보다 작거나 같은 자연수이다.
//
// 출력
// 첫째 줄에 자리수를 내림차순으로 정렬한 수를 출력한다.

// 방법 1
let input = readLine()!
var number = [String]()

for i in input {
    number.append(String(i))
}
number = [number.sorted(by: >).reduce("", +)]
print(number[0])


// 방법 2
print(String(readLine()!.sorted(by: >)))


// 2143
// 답 4321
