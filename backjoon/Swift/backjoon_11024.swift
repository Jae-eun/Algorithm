//
//  backjoon_11024.swift
//  fight
//
//  Created by 이재은 on 2020/09/08.
//  Copyright © 2020 jaeeun. All rights reserved.
//

import Foundation

//backjoon 더하기 4 11024
//
//문제
//수 N개가 주어졌을 때, N개의 합을 구하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 테스트 케이스의 개수 T가 주어진다. 각 테스트 케이스는 한 줄로 이루어져 있으며, N(1 ≤ N ≤ 100)개의 수가 공백으로 구분되어서 주어진다. 입력으로 주어지는 수는 10,000보다 작거나 같은 자연수이다. 또, 0으로 시작하는 수는 주어지지 않는다.
//
//출력
//각 테스트 케이스마다 입력받은 수 N개의 합을 한 줄에 하나씩 입력받은 순서대로 출력한다.

let T = Int(readLine()!)!
for _ in 0..<T {
    print(readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +))
}

//2
//1 2 3 4 5
//5 4 5 4 2 3 1 2
//답
//15
//26
