//
//  backjoon_2568.swift
//  algo
//
//  Created by 이재은 on 07/05/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 2568 덩치
// 전체 사람 수 N과 각각 몸무게와 키가 주어짐
// 이 집단에서 덩치가 큰 순서대로 순위를 출력

let N = Int(readLine()!)!
var weightHeight = [[Int]]()
var rank = [Int]()
var person = 0
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map(){Int($0)!}
    weightHeight.append(input)
}
for i in 0..<N {
    for j in 0..<N {
        if weightHeight[i][0] < weightHeight[j][0]
            && weightHeight[i][1] < weightHeight[j][1] {
            person += 1
        }
    }
    rank.append(person+1)
    person = 0
}
for i in 0..<N {
    print(rank[i], terminator: " ")
}
