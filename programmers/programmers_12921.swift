//
//  programmers_12921.swift
//  algo
//
//  Created by 이재은 on 26/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12921 소수 찾기
// 1부터 입력받은 숫자 n 사이에 있는 소수의 개수를 반환
// 소수는 1과 자기 자신으로만 나누어지는 수를 의미
// 1은 소수가 아닙니다
// n은 2이상 1000000 이하의 자연수

// 에라토스테네스의 체
// 2부터 N-1까지의 수 중에서 2의 배수를 모두 거르고 남은 숫자들 중에서 3의 배수로 거르고를 제곱근 N까지 반복해서 걸러지지 않고 남은 수들이 모두 소수

func solution(_ n:Int) -> Int {
    var count = 0
    var isPrime = [Bool](repeating: true, count: n+1)
    var i = 0
    
    for number in 2...n {
        if isPrime[number] == true {
            i = number * 2
            while i <= n {
                isPrime[i] = false
                i += number
            }
        }
    }
    count = isPrime.filter(){ $0 == true }.count
    return count - 2
}
