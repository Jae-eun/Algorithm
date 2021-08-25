//
//  backjoon_16956.swift
//  algo
//
//  Created by 이재은 on 2021/08/25.
//  Copyright © 2021 이재은. All rights reserved.
//

//backjoon 16956 늑대와 양

//문제
//크기가 R×C인 목장이 있고, 목장은 1×1 크기의 칸으로 나누어져 있다. 각각의 칸에는 비어있거나, 양 또는 늑대가 있다. 양은 이동하지 않고 위치를 지키고 있고, 늑대는 인접한 칸을 자유롭게 이동할 수 있다. 두 칸이 인접하다는 것은 두 칸이 변을 공유하는 경우이다.
//
//목장에 울타리를 설치해 늑대가 양이 있는 칸으로 갈 수 없게 하려고 한다. 늑대는 울타리가 있는 칸으로는 이동할 수 없다. 울타리를 설치해보자.
//
//입력
//첫째 줄에 목장의 크기 R, C가 주어진다.
//
//둘째 줄부터 R개의 줄에 목장의 상태가 주어진다. '.'는 빈 칸, 'S'는 양, 'W'는 늑대이다.
//
//출력
//늑대가 양이 있는 칸으로 갈 수 없게 할 수 있다면 첫째 줄에 1을 출력하고, 둘째 줄부터 R개의 줄에 목장의 상태를 출력한다. 울타리는 'D'로 출력한다. 울타리를 어떻게 설치해도 늑대가 양이 있는 칸으로 갈 수 있다면 첫째 줄에 0을 출력한다.
//
//제한
//1 ≤ R, C ≤ 500

struct Matrix: Hashable {
    var row: Int
    var column: Int
}

let direction = [(0, -1), (1, 0), (0, 1), (-1, 0)]
var map = [[String]]()
let RC = readLine()!.split(separator: " ").compactMap { Int($0) }
var isSafe = true

for _ in 0..<RC[0] {
    map.append(readLine()!.map { String($0) })
}

loop1: for i in 0..<RC[0] {
    for j in 0..<RC[1] {
        if map[i][j] == "W" {
          isSafe = bfs(Matrix(row: i, column: j))
            if !isSafe {
                break loop1
            }
        }
    }
}

if isSafe {
    print(1)
    for i in 0..<RC[0] {
        print(map[i].joined())
    }
} else {
    print(0)
}

func bfs(_ position: Matrix) -> Bool {
    for i in 0..<4 {
        let nextRow = position.row + direction[i].0
        let nextCol = position.column + direction[i].1

        if nextRow < 0 || nextCol < 0 || nextRow >= RC[0] || nextCol >= RC[1] {
            continue
        }

        if map[nextRow][nextCol] == "D" || map[nextRow][nextCol] == "W" {
            continue
        }

        if map[nextRow][nextCol] == "S" {
            return false
        }

        let next = Matrix(row: nextRow, column: nextCol)
        map[next.row][next.column] = "D"
    }
    return true
}

//6 6
//..S...
//..S.W.
//.S....
//..W...
//...W..
//......
//답
//1
//..SD..
//..SDW.
//.SD...
//.DW...
//DD.W..
//......
//
//1 2
//SW
//답
//0
//
//5 5
//.S...
//...S.
//S....
//...S.
//.S...
//답
//1
//.S...
//...S.
//S.D..
//...S.
//.S...
