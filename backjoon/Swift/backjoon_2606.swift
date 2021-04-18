//
//  backjoon_2606.swift
//  algo
//
//  Created by 이재은 on 2021/04/18.
//  Copyright © 2021 이재은. All rights reserved.
//

//backjoon 2606 바이러스

//문제
//신종 바이러스인 웜 바이러스는 네트워크를 통해 전파된다. 한 컴퓨터가 웜 바이러스에 걸리면 그 컴퓨터와 네트워크 상에서 연결되어 있는 모든 컴퓨터는 웜 바이러스에 걸리게 된다.
//
//예를 들어 7대의 컴퓨터가 <그림 1>과 같이 네트워크 상에서 연결되어 있다고 하자. 1번 컴퓨터가 웜 바이러스에 걸리면 웜 바이러스는 2번과 5번 컴퓨터를 거쳐 3번과 6번 컴퓨터까지 전파되어 2, 3, 5, 6 네 대의 컴퓨터는 웜 바이러스에 걸리게 된다. 하지만 4번과 7번 컴퓨터는 1번 컴퓨터와 네트워크상에서 연결되어 있지 않기 때문에 영향을 받지 않는다.
//
//
//
//어느 날 1번 컴퓨터가 웜 바이러스에 걸렸다. 컴퓨터의 수와 네트워크 상에서 서로 연결되어 있는 정보가 주어질 때, 1번 컴퓨터를 통해 웜 바이러스에 걸리게 되는 컴퓨터의 수를 출력하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에는 컴퓨터의 수가 주어진다. 컴퓨터의 수는 100 이하이고 각 컴퓨터에는 1번 부터 차례대로 번호가 매겨진다. 둘째 줄에는 네트워크 상에서 직접 연결되어 있는 컴퓨터 쌍의 수가 주어진다. 이어서 그 수만큼 한 줄에 한 쌍씩 네트워크 상에서 직접 연결되어 있는 컴퓨터의 번호 쌍이 주어진다.
//
//출력
//1번 컴퓨터가 웜 바이러스에 걸렸을 때, 1번 컴퓨터를 통해 웜 바이러스에 걸리게 되는 컴퓨터의 수를 첫째 줄에 출력한다.

// 풀이 1
let n = Int(readLine()!)!
let infos = Int(readLine()!)!
var network = [String: [String]]()
var visited = [String]()

for _ in 0..<infos {
    let info = readLine()!.split(separator: " ").map { String($0) }
    network[info[0]] = network[info[0], default: []] + [info[1]]
    network[info[1]] = network[info[1], default: []] + [info[0]]
}

var start = "1"
var queue = [start]
while !queue.isEmpty {
    let num = queue.removeFirst()
    visited.append(num)
    for i in network[num]! {
        if !queue.contains(i) && !visited.contains(i) {
            queue.append(i)
        }
    }
}
print(visited.count - 1)

// 풀이 2
let n = Int(readLine()!)!
let infos = Int(readLine()!)!
var network = [[Int]](repeating: [], count: n + 1)
var visited = [Bool](repeating: false, count: n + 1)

for _ in 0..<infos {
    let info = readLine()!.split(separator: " ").compactMap { Int($0) }
    network[info[0]].append(info[1])
    network[info[1]].append(info[0])
}

var start = 1
visited[1] = true
var queue = [start]
while !queue.isEmpty {
    let num = queue.removeFirst()
    visited[num] = true
    for i in network[num] {
        if visited[i] { continue }
        queue.append(i)
    }
}
print(visited.filter { $0 == true }.count - 1)

//7
//6
//1 2
//2 3
//1 5
//5 2
//5 6
//4 7
//답
//4
