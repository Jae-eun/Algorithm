//
//  backjoon_11657.swift
//  algo
//
//  Created by 이재은 on 2021/09/03.
//  Copyright © 2021 이재은. All rights reserved.
//

import Foundation

//backjoon 타임머신 11657

//문제
//N개의 도시가 있다. 그리고 한 도시에서 출발하여 다른 도시에 도착하는 버스가 M개 있다. 각 버스는 A, B, C로 나타낼 수 있는데, A는 시작도시, B는 도착도시, C는 버스를 타고 이동하는데 걸리는 시간이다. 시간 C가 양수가 아닌 경우가 있다. C = 0인 경우는 순간 이동을 하는 경우, C < 0인 경우는 타임머신으로 시간을 되돌아가는 경우이다.
//
//1번 도시에서 출발해서 나머지 도시로 가는 가장 빠른 시간을 구하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 도시의 개수 N (1 ≤ N ≤ 500), 버스 노선의 개수 M (1 ≤ M ≤ 6,000)이 주어진다. 둘째 줄부터 M개의 줄에는 버스 노선의 정보 A, B, C (1 ≤ A, B ≤ N, -10,000 ≤ C ≤ 10,000)가 주어진다.
//
//출력
//만약 1번 도시에서 출발해 어떤 도시로 가는 과정에서 시간을 무한히 오래 전으로 되돌릴 수 있다면 첫째 줄에 -1을 출력한다. 그렇지 않다면 N-1개 줄에 걸쳐 각 줄에 1번 도시에서 출발해 2번 도시, 3번 도시, ..., N번 도시로 가는 가장 빠른 시간을 순서대로 출력한다. 만약 해당 도시로 가는 경로가 없다면 대신 -1을 출력한다.

struct Bus {
    var start: Int
    var end: Int
    var weight: Int
}

let input = readLine()!.split(separator: " ").compactMap { Int($0) }
var bus = [Bus]()
var distance = [Int](repeating: Int.max, count: input[0] + 1)

for _ in 0..<input[1] {
    let n = readLine()!.split(separator: " ").compactMap { Int($0) }
    bus.append(Bus(start: n[0], end: n[1], weight: n[2]))
}

func bellmanFord(_ distance: [Int], _ bus: [Bus], _ start: Int) -> [Int] {
    var distance = distance
    distance[start] = 0

    for i in 0..<distance.count {
        for j in 0..<bus.count {
            let b = bus[j]
            if distance[b.start] == Int.max { continue }
            if distance[b.end] > distance[b.start] + b.weight {
                distance[b.end] = distance[b.start] + b.weight
                if i == distance.count - 1 {
                    return [-1]
                }
            }
        }
    }
    return distance
}

let minDistance = bellmanFord(distance, bus, 1)
if minDistance.count == 1 {
    print(-1)
} else {
    for i in 2...input[0] {
        if minDistance[i] == Int.max {
            print(-1)
        } else {
            print(minDistance[i])
        }
    }
}

//3 4
//1 2 4
//1 3 3
//2 3 -1
//3 1 -2
//답
//4
//3
//
//
//3 4
//1 2 4
//1 3 3
//2 3 -4
//3 1 -2
//답
//-1
//
//
//3 2
//1 2 4
//1 2 3
//답
//3
//-1
