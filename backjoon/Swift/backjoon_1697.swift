//
//  backjoon_1697.swift
//  algo
//
//  Created by 이재은 on 2020/08/27.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon 1697 숨바꼭질
//
//문제
//수빈이는 동생과 숨바꼭질을 하고 있다. 수빈이는 현재 점 N(0 ≤ N ≤ 100,000)에 있고, 동생은 점 K(0 ≤ K ≤ 100,000)에 있다. 수빈이는 걷거나 순간이동을 할 수 있다. 만약, 수빈이의 위치가 X일 때 걷는다면 1초 후에 X-1 또는 X+1로 이동하게 된다. 순간이동을 하는 경우에는 1초 후에 2*X의 위치로 이동하게 된다.
//
//수빈이와 동생의 위치가 주어졌을 때, 수빈이가 동생을 찾을 수 있는 가장 빠른 시간이 몇 초 후인지 구하는 프로그램을 작성하시오.
//
//입력
//첫 번째 줄에 수빈이가 있는 위치 N과 동생이 있는 위치 K가 주어진다. N과 K는 정수이다.
//
//출력
//수빈이가 동생을 찾는 가장 빠른 시간을 출력한다.

let input = readLine()!.split(separator: " ").map { Int($0)! }
var queue = [Int]()
var isVisited = [Int](repeating: 0, count: 100001)

queue.append(input[0])

while !queue.isEmpty {
    let position = queue.removeFirst()
    if position == input[1] {
        print(isVisited[position])
        break
    }
    if position > 0 && isVisited[position - 1] == 0 {
        queue.append(position - 1)
        isVisited[position - 1] = isVisited[position] + 1
    }
    if position < 100000 && isVisited[position + 1] == 0 {
        queue.append(position + 1)
        isVisited[position + 1] = isVisited[position] + 1
    }
    if position * 2 <= 100000 && isVisited[position * 2] == 0 {
        queue.append(position * 2)
        isVisited[position * 2] = isVisited[position] + 1
    }
}

//5 17
//답
//4
