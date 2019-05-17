//
//  backjoon_2978.swift
//  algo
//
//  Created by 이재은 on 18/05/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 2978 소수
// 주어진 N개 숫자 중 소수가 몇 개인지 출력
// 첫 줄에 수의 개수 N(100이하). 다음 줄 N개의 수(1,000 이하의 자연수) 주어짐

let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map(){ Int($0)! }
var count = 0

for i in 0..<N {
    var isPrime = true
    if input[i] != 1 {
        for num in 2..<input[i] {
            if input[i] % num == 0 {
                isPrime = false
                break
            } else {
                isPrime = true
            }
        }
        if isPrime == true {
            count += 1
        }
    }
}
print(count)
