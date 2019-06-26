//
//  programmers_12940.swift
//  algo
//
//  Created by 이재은 on 27/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12940 최대공약수와 최소공배수
// 두 수를 입력받아 두 수의 최대공약수와 최소공배수를 반환
// 두 수는 1이상 1000000이하의 자연수

// 풀이 1
func gcd( _ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        if a > b {
            return gcd(a-b, b)
        } else {
            return gcd(a, b-a)
        }
    }
}

func lcm(_ m: Int, _ n: Int) -> Int {
    return m * n / gcd(m, n)
}

func solution(_ n:Int, _ m:Int) -> [Int] {
    var result = [Int]()
    result.append(gcd(n, m))
    result.append(lcm(n, m))
    return result
}

// 풀이 2
func gcd( _ a: Int, _ b: Int) -> Int {
    let mod = a % b
    return mod == 0 ? min(a, b) : gcd(b, mod)
}

func lcm(_ m: Int, _ n: Int) -> Int {
    return m * n / gcd(m, n)
}

func solution(_ n:Int, _ m:Int) -> [Int] {
    return [gcd(n, m), lcm(n, m)]
}


print(solution(3, 12))
