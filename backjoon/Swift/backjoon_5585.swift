//
//  backjoon_5585.swift
//  algo
//
//  Created by 이재은 on 01/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

//backjoon 거스름돈 5585
//
//타로는 자주 JOI잡화점에서 물건을 산다. JOI잡화점에는 잔돈으로 500엔, 100엔, 50엔, 10엔, 5엔, 1엔이 충분히 있고, 언제나 거스름돈 개수가 가장 적게 잔돈을 준다. 타로가 JOI잡화점에서 물건을 사고 카운터에서 1000엔 지폐를 한장 냈을 때, 받을 잔돈에 포함된 잔돈의 개수를 구하는 프로그램을 작성하시오.
//
//예를 들어 입력된 예1의 경우에는 아래 그림에서 처럼 4개를 출력해야 한다.
//
//
//
//입력
//입력은 한줄로 이루어져있고, 타로가 지불할 돈(1 이상 1000미만의 정수) 1개가 쓰여져있다.
//
//출력
//제출할 출력 파일은 1행으로만 되어 있다. 잔돈에 포함된 매수를 출력하시오.


let money = Int(readLine()!)!
var change = 1000 - money
let coins = [500, 100, 50, 10, 5, 1]
var count = 0

for coin in coins {
    while change >= coin {
        change -= coin
        count += 1
    }
}
print(count)

//380
//답
//4
