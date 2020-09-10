//
//  backjoon_3187.swift
//  algo
//
//  Created by 이재은 on 2020/09/10.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon 양치기 꿍 3187
//
//문제
//양치기 꿍은 맨날 늑대가 나타났다고 마을 사람들을 속였지만 이젠 더이상 마을 사람들이 속지 않는다. 화가 난 꿍은 복수심에 불타 아예 늑대들을 양들이 있는 울타리안에 마구 집어넣어 양들을 잡아먹게 했다.
//
//하지만 양들은 보통 양들이 아니다. 같은 울타리 영역 안의 양들의 숫자가 늑대의 숫자보다 더 많을 경우 늑대가 전부 잡아먹힌다. 물론 그 외의 경우는 양이 전부 잡아먹히겠지만 말이다.
//
//꿍은 워낙 똑똑했기 때문에 이들의 결과는 이미 알고있다. 만약 빈 공간을 '.'(점)으로 나타내고 울타리를 '#', 늑대를 'v', 양을 'k'라고 나타낸다면 여러분은 몇 마리의 양과 늑대가 살아남을지 계산할 수 있겠는가?
//
//단, 울타리로 막히지 않은 영역에는 양과 늑대가 없으며 양과 늑대는 대각선으로 이동할 수 없다.
//
//입력
//입력의 첫 번째 줄에는 각각 영역의 세로와 가로의 길이를 나타내는 두 개의 정수 R, C (3 ≤ R, C ≤ 250)가 주어진다.
//
//다음 각 R줄에는 C개의 문자가 주어지며 이들은 위에서 설명한 기호들이다.
//
//출력
//살아남게 되는 양과 늑대의 수를 각각 순서대로 출력한다.

struct Matrix: Hashable {
    var row: Int
    var column: Int
}

let direction = [(0, 1), (0, -1), (1, 0), (-1, 0)]

let input = readLine()!.split(separator: " ").map { Int($0)! }
let R = input[0], C = input[1]
var yard = [[String]]()
var isVisited = [Matrix: Bool]()
var queue = [Matrix]()
var count = (sheep: 0, wolf: 0)

for _ in 0..<R {
    yard.append(readLine()!.map { String($0) })
}

func bfs(_ start: Matrix) {
    queue.append(start)
    isVisited[start] = true

    var sheepCount = 0
    var wolfCount = 0
    while !queue.isEmpty {
        let position = queue.removeFirst()
        for i in 0..<4 {
            let nextRow = position.row + direction[i].0
            let nextCol = position.column + direction[i].1

            if nextRow < 0 || nextRow >= R || nextCol < 0 || nextCol >= C {
                continue
            }

            let next = Matrix(row: nextRow, column: nextCol)
            if isVisited[next] ?? false || yard[nextRow][nextCol] == "#" {
                continue
            }

            if yard[nextRow][nextCol] == "v" {
                wolfCount += 1
            }

            if yard[nextRow][nextCol] == "k" {
                sheepCount += 1
            }

            queue.append(next)
            isVisited[next] = true
        }
    }
    if wolfCount >= sheepCount {
        count.wolf += wolfCount
    } else {
        count.sheep += sheepCount
    }
}

for i in 0..<R {
    for j in 0..<C {
        if isVisited[Matrix(row: i, column: j)] == nil {
            isVisited[Matrix(row: i, column: j)] = false
        }
        if yard[i][j] == "v" || yard[i][j] == "k" || !isVisited[Matrix(row: i, column: j)]! {
            bfs(Matrix(row: i, column: j))
        }
    }
}
print("\(count.sheep) \(count.wolf)")

//6 6
//...#..
//.##v#.
//#v.#.#
//#.k#.#
//.###.#
//...###
//답
//0 2
//
//8 8
//.######.
//#..k...#
//#.####.#
//#.#v.#.#
//#.#.k#k#
//#k.##..#
//#.v..v.#
//.######.
//답
//3 1
//
//9 12
//.###.#####..
//#.kk#...#v#.
//#..k#.#.#.#.
//#..##k#...#.
//#.#v#k###.#.
//#..#v#....#.
//#...v#v####.
//.####.#vv.k#
//.......####.
//답
//3 5
