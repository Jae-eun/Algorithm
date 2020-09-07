//
//  backjoon_2667.swift
//  fight
//
//  Created by 이재은 on 2020/09/07.
//  Copyright © 2020 jaeeun. All rights reserved.
//

import Foundation

struct Matrix: Hashable {
    var row: Int
    var column: Int
}

let direction = [(0, -1), (1, 0), (0, 1), (-1, 0)]
var map = [[Int]]()
var isVisited = [Matrix: Bool]()
var queue = [Matrix]()
var apartmentCount = [Int]()
let N = Int(readLine()!)!

for _ in 0..<N {
    map.append(readLine()!.compactMap { $0.wholeNumberValue })
}
for i in 0..<N {
    for j in 0..<N {
        if map[i][j] == 1 && !(isVisited[Matrix(row: i, column: j)] ?? false) {
            bfs(Matrix(row: i, column: j))
        }

    }
}

func bfs(_ position: Matrix) {
    var count = 0
    queue.append(position)
    isVisited[position] = true
    while !queue.isEmpty {
        let position = queue.removeFirst()
        count += 1
        for i in 0..<4 {
            let nextRow = position.row + direction[i].0
            let nextCol = position.column + direction[i].1

            if nextRow < 0 || nextCol < 0 || nextRow >= N || nextCol >= N {
                continue
            }
            if map[nextRow][nextCol] == 0 {
                continue
            }
            let next = Matrix(row: nextRow, column: nextCol)
            if isVisited[next] ?? false {
                continue
            }
            queue.append(next)
            isVisited[next] = true
        }
    }
    apartmentCount.append(count)
}

print(apartmentCount.count)
apartmentCount.sorted().forEach {
    print($0)
}
