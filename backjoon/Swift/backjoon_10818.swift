//
//  backjoon_10818.swift
//  algo
//
//  Created by 이재은 on 25/05/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 10818 최소, 최대
// 주어진 N(1 ≤ N ≤ 1,000,000)개의 정수(-1,000,000보다 크거나 같고, 1,000,000보다 작거나 같은 정수)에서 최소값과 최댓값 출력

let N = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map() { Int($0)! }
print("\(input.min()!) \(input.max()!)")
