//
//  programmers_12943.swift
//  algo
//
//  Created by 이재은 on 25/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12943 콜라츠 추측
// 1937년 Collatz란 사람에 의해 제기된 이 추측은, 주어진 수가 1이 될때까지 다음 작업을 반복하면, 모든 수를 1로 만들 수 있다.
// 1-1. 입력된 수가 짝수라면 2로 나눕니다.
// 1-2. 입력된 수가 홀수라면 3을 곱하고 1을 더합니다.
// 2. 결과로 나온 수에 같은 작업을 1이 될 때까지 반복합니다.
// 입력된 수, num은 1 이상 8000000 미만인 정수입니다.
// 단, 작업을 500번을 반복해도 1이 되지 않는다면 –1을 반환

// 풀이 1
func solution(_ num:Int) -> Int {
    var number = num
    var count = 0
    
    if number == 1 {
        return 0
    }
    
    repeat {
        if number % 2 == 0 {
            number /= 2
        } else {
            number = number * 3 + 1
        }
        count += 1
        if count > 500 {
            return -1
        }
    } while number != 1
    
    return count
}


// 풀이 2
func solution(_ num:Int) -> Int {
    var number = num
    var count = 0
    
    while number != 1 {
        number = collatz(number)
        count += 1
        if count > 500 {
            return -1
        }
    }
    
    return count
}

func collatz(_ num: Int) -> Int {
    if num % 2 == 0 {
        return num / 2
    } else {
        return 3 * num + 1
    }
}

