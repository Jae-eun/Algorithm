//
//  programmers_82612.swift
//  algo
//
//  Created by 이재은 on 2021/08/20.
//  Copyright © 2021 이재은. All rights reserved.
//

import Foundation

//programmers 부족한 금액 계산하기 82612

//문제 설명
//새로 생긴 놀이기구는 인기가 매우 많아 줄이 끊이질 않습니다. 이 놀이기구의 원래 이용료는 price원 인데, 놀이기구를 N 번 째 이용한다면 원래 이용료의 N배를 받기로 하였습니다. 즉, 처음 이용료가 100이었다면 2번째에는 200, 3번째에는 300으로 요금이 인상됩니다.
//놀이기구를 count번 타게 되면 현재 자신이 가지고 있는 금액에서 얼마가 모자라는지를 return 하도록 solution 함수를 완성하세요.
//단, 금액이 부족하지 않으면 0을 return 하세요.
//
//제한사항
//놀이기구의 이용료 price : 1 ≤ price ≤ 2,500, price는 자연수
//처음 가지고 있던 금액 money : 1 ≤ money ≤ 1,000,000,000, money는 자연수
//놀이기구의 이용 횟수 count : 1 ≤ count ≤ 2,500, count는 자연수
//입출력 예
//price    money    count    result
//3    20    4    10
//입출력 예 설명
//입출력 예 #1
//이용금액이 3인 놀이기구를 4번 타고 싶은 고객이 현재 가진 금액이 20이라면, 총 필요한 놀이기구의 이용 금액은 30 (= 3+6+9+12) 이 되어 10만큼 부족하므로 10을 return 합니다.

func solution(_ price: Int, _ money: Int, _ count: Int) -> Int64 {
    var totalPrice = 0
    (1...count).forEach {
        totalPrice += $0 * price
    }
    let answer = Int64(totalPrice - money)
    return answer > 0 ? answer : Int64(0)
}

print(solution(3, 20, 4)) // 10
print(solution(3, 20, 3)) // 10
