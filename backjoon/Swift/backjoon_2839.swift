//
//  backjoon_2839.swift
//  algo
//
//  Created by 이재은 on 11/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 설탕 배달 2839

// 상근이는 요즘 설탕공장에서 설탕을 배달하고 있다. 상근이는 지금 사탕가게에 설탕을 정확하게 N킬로그램을 배달해야 한다. 설탕공장에서 만드는 설탕은 봉지에 담겨져 있다. 봉지는 3킬로그램 봉지와 5킬로그램 봉지가 있다.
//
// 상근이는 귀찮기 때문에, 최대한 적은 봉지를 들고 가려고 한다. 예를 들어, 18킬로그램 설탕을 배달해야 할 때, 3킬로그램 봉지 6개를 가져가도 되지만, 5킬로그램 3개와 3킬로그램 1개를 배달하면, 더 적은 개수의 봉지를 배달할 수 있다.
//
// 상근이가 설탕을 정확하게 N킬로그램 배달해야 할 때, 봉지 몇 개를 가져가면 되는지 그 수를 구하는 프로그램을 작성하시오.
//
// 입력
// 첫째 줄에 N이 주어진다. (3 ≤ N ≤ 5000)
//
// 출력
// 상근이가 배달하는 봉지의 최소 개수를 출력한다. 만약, 정확하게 N킬로그램을 만들 수 없다면 -1을 출력한다.

// 방법 1
var input = Int(readLine()!)!
var fiveResult = 0
var threeResult = 0

fiveResult = input / 5
input %= 5

while input >= 0 {
    if input % 3 == 0 {
        threeResult = input / 3
        input %= 3
        break
    }
    fiveResult -= 1
    input += 5
    if fiveResult < 0 {
        break
    }
}
print(input == 0 ? fiveResult+threeResult : -1)


// 방법 2
var input = Int(readLine()!)!
var result = 0

while input > 0 {
    if input % 5 == 0 {
        result += input / 5
        input = 0
    } else {
        input -= 3
        result += 1
    }
}
print(input == 0 ? result : -1)

//18
//답 4
//
//4
//답 -1
//
//6
//답 2
//
//9
//답 3
//
//11
//답 3
