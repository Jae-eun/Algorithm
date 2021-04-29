//
//  backjoon_1978.swift
//  algo
//
//  Created by 이재은 on 2021/04/29.
//  Copyright © 2021 이재은. All rights reserved.
//

//backjoon 소수 찾기 1978

//문제
//주어진 수 N개 중에서 소수가 몇 개인지 찾아서 출력하는 프로그램을 작성하시오.
//
//입력
//첫 줄에 수의 개수 N이 주어진다. N은 100이하이다. 다음으로 N개의 수가 주어지는데 수는 1,000 이하의 자연수이다.
//
//출력
//주어진 수들 중 소수의 개수를 출력한다.

let N = readLine()!
let input = readLine()!.split(separator: " ").compactMap{ Int($0) }
var primeCount = 0

loop1: for num in input {
    if num != 1 {
        for i in 2..<num {
            if num % i == 0 {
                continue loop1
            }
        }
        primeCount += 1
    }
}
print(primeCount)

//4
//1 3 5 7
//답
//3
