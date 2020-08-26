//
//  backjoon_2178.swift
//  algo
//
//  Created by 이재은 on 2020/08/27.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon 미로 탐색 2178
//
//문제
//N×M크기의 배열로 표현되는 미로가 있다.
//
//1    0    1    1    1    1
//1    0    1    0    1    0
//1    0    1    0    1    1
//1    1    1    0    1    1
//미로에서 1은 이동할 수 있는 칸을 나타내고, 0은 이동할 수 없는 칸을 나타낸다. 이러한 미로가 주어졌을 때, (1, 1)에서 출발하여 (N, M)의 위치로 이동할 때 지나야 하는 최소의 칸 수를 구하는 프로그램을 작성하시오. 한 칸에서 다른 칸으로 이동할 때, 서로 인접한 칸으로만 이동할 수 있다.
//
//위의 예에서는 15칸을 지나야 (N, M)의 위치로 이동할 수 있다. 칸을 셀 때에는 시작 위치와 도착 위치도 포함한다.
//
//입력
//첫째 줄에 두 정수 N, M(2 ≤ N, M ≤ 100)이 주어진다. 다음 N개의 줄에는 M개의 정수로 미로가 주어진다. 각각의 수들은 붙어서 입력으로 주어진다.
//
//출력
//첫째 줄에 지나야 하는 최소의 칸 수를 출력한다. 항상 도착위치로 이동할 수 있는 경우만 입력으로 주어진다.


struct Matrix: Hashable {
    let row: Int
    let column: Int
}

let direction = [(0, -1), (1, 0), (0, 1), (-1, 0)]
let start = Matrix(row: 0, column: 0)
var result = 0
var maze = [[Int]]()
var queue = [Matrix]()
var isVisited = [Matrix: Bool]()

let NM = readLine()!.split(separator: " ").map { Int($0)! }
let N = NM[0]
let M = NM[1]

for _ in 0..<N {
    maze.append(readLine()!.compactMap { $0.wholeNumberValue })
}

queue.append(start)
isVisited[start] = true

while !queue.isEmpty {
    let position = queue.removeFirst()
    for i in 0..<4 {
        let nextRow = position.row + direction[i].0
        let nextCol = position.column + direction[i].1

        if nextRow < 0 || nextRow >= N || nextCol < 0 || nextCol >= M {
            continue
        }
        if maze[nextRow][nextCol] == 0 {
            continue
        }
        let next = Matrix(row: nextRow, column: nextCol)
        if isVisited[next] ?? false {
            continue
        }
        isVisited[next] = true
        queue.append(next)
        maze[nextRow][nextCol] = maze[position.row][position.column] + 1
    }
}
print(maze[N-1][M-1])


//4 6
//101111
//101010
//101011
//111011
//답
//15
//
//
//4 6
//110110
//110110
//111111
//111101
//답
//9
//
//
//2 25
//1011101110111011101110111
//1110111011101110111011101
//답
//38
//
//
//7 7
//1011111
//1110001
//1000001
//1000001
//1000001
//1000001
//1111111
//답
//13
