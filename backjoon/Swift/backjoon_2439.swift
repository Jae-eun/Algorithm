//
//  backjoon_2439.swift
//  algo
//
//  Created by 이재은 on 07/06/2020.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon 별 찍기 - 2 2439
//
//문제
//첫째 줄에는 별 1개, 둘째 줄에는 별 2개, N번째 줄에는 별 N개를 찍는 문제
//
//하지만, 오른쪽을 기준으로 정렬한 별(예제 참고)을 출력하시오.
//
//입력
//첫째 줄에 N(1 ≤ N ≤ 100)이 주어진다.
//
//출력
//첫째 줄부터 N번째 줄까지 차례대로 별을 출력한다.

// 풀이 1
let N = Int(readLine()!)!
for i in 0..<N {
    var str = ""
    for _ in 1..<N-i {
        str += " "
    }
    for _ in 0...i {
        str += "*"
    }
    print(str)
}

// 풀이 2
let N = Int(readLine()!)!
Array(1...N).forEach { print(String(repeating: " ", count: N-$0), terminator: "");
    print(String(repeating: "*", count: $0))}
