//
//  goorm_43211.swift
//  algo
//
//  Created by 이재은 on 2021/08/29.
//  Copyright © 2021 이재은. All rights reserved.
//

import Foundation

// 구름 다익스트라 알고리즘 43211

//https://level.goorm.io/exam/43211/%EB%8B%A4%EC%9D%B5%EC%8A%A4%ED%8A%B8%EB%9D%BC-%EC%95%8C%EA%B3%A0%EB%A6%AC%EC%A6%98-dijkstra-s-algorithm/quiz/1


let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let N = input[0]
let E = input[1]

var graph = [[Int]]()
for _ in 0..<E {
    graph.append(readLine()!.split(separator: " ").compactMap { Int($0) })
}
let start = Int(readLine()!)!

var distance = [Int](repeating: Int.max, count: N + 1)
distance = dijkstra(distance, graph, start)

for i in 1...N {
    print("\(i): \(distance[i])")
}

func dijkstra(_ distance: [Int], _ road: [[Int]], _ start: Int) -> [Int] {
    var distance = distance
    distance[start] = 0
    var queue: [Int] = [start]

    while !queue.isEmpty {
        let current = queue.removeFirst()
        let containedNode = road.filter { $0[0] == current || $0[1] == current }
        for node in containedNode {
            let other = node[0] == current ? node[1] : node[0]
            if distance[current] == Int.max { continue }
            if distance[current] + node[2] < distance[other] {
                distance[other] = distance[current] + node[2]
                queue.append(other)
            }
        }
    }
    return distance
}
