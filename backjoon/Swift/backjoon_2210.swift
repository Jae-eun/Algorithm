//
//  backjoon_2210.swift
//  algo
//
//  Created by 이재은 on 2021/04/30.
//  Copyright © 2021 이재은. All rights reserved.
//

//backjoon 숫자판 점프 2210
//
//문제
//5×5 크기의 숫자판이 있다. 각각의 칸에는 숫자(digit, 0부터 9까지)가 적혀 있다. 이 숫자판의 임의의 위치에서 시작해서, 인접해 있는 네 방향으로 다섯 번 이동하면서, 각 칸에 적혀있는 숫자를 차례로 붙이면 6자리의 수가 된다. 이동을 할 때에는 한 번 거쳤던 칸을 다시 거쳐도 되며, 0으로 시작하는 000123과 같은 수로 만들 수 있다.
//
//숫자판이 주어졌을 때, 만들 수 있는 서로 다른 여섯 자리의 수들의 개수를 구하는 프로그램을 작성하시오.
//
//입력
//다섯 개의 줄에 다섯 개의 정수로 숫자판이 주어진다.
//
//출력
//첫째 줄에 만들 수 있는 수들의 개수를 출력한다.

let row = 5
var board = [[String]]()
var set = Set<String>()
let direction = [(0, 1), (1, 0), (0, -1), (-1, 0)]

for _ in 0..<row {
    let num = readLine()!.split(separator: " ").map { String($0) }
    board.append(num)
}

for i in 0..<row {
    for j in 0..<row {
        dfs((i, j), board[i][j], 0)
    }
}

print(set.count)

func dfs(_ current: (Int, Int), _ text: String, _ count: Int) {
    if count == row {
        set.insert(text)
        return
    }
    for dir in direction {
        let next = (current.0 + dir.0, current.1 + dir.1)
        if next.0 >= row || next.1 >= row || next.0 < 0 || next.1 < 0 { continue }
        dfs((next.0, next.1), text + board[next.0][next.1], count + 1)
    }
}

