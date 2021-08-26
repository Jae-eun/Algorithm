//
//  leetcode_130.swift
//  algo
//
//  Created by 이재은 on 2021/08/26.
//  Copyright © 2021 이재은. All rights reserved.
//

// leetcode 130. Surrounded Regions
//
//Given an m x n matrix board containing 'X' and 'O', capture all regions that are 4-directionally surrounded by 'X'.
//
//A region is captured by flipping all 'O's into 'X's in that surrounded region.
//
//
//
//Example 1:
//
//
//Input: board = [["X","X","X","X"],["X","O","O","X"],["X","X","O","X"],["X","O","X","X"]]
//Output: [["X","X","X","X"],["X","X","X","X"],["X","X","X","X"],["X","O","X","X"]]
//Explanation: Surrounded regions should not be on the border, which means that any 'O' on the border of the board are not flipped to 'X'. Any 'O' that is not on the border and it is not connected to an 'O' on the border will be flipped to 'X'. Two cells are connected if they are adjacent cells connected horizontally or vertically.
//Example 2:
//
//Input: board = [["X"]]
//Output: [["X"]]
//
//
//Constraints:
//
//m == board.length
//n == board[i].length
//1 <= m, n <= 200
//board[i][j] is 'X' or 'O'.

struct Matrix: Hashable {
    var row: Int
    var column: Int
}

func bfs(at position: Matrix,
         _ board: inout [[Character]]) -> [Matrix]? {
    var queue = [Matrix]()
    let direction = [(0, -1), (1, 0), (0, 1), (-1, 0)]
    var route = [Matrix]()
    var isVisited = [Matrix: Bool]()

    queue.append(position)
    route.append(position)
    isVisited[position] = true
    while !queue.isEmpty {
        let current = queue.removeFirst()

        for i in 0..<direction.count {
            let nextRow = current.row + direction[i].0
            let nextColumn = current.column + direction[i].1

            if nextRow < 0 || nextColumn < 0 || nextRow >= board.count || nextColumn >= board[0].count { return nil }

            if board[nextRow][nextColumn] == "X" { continue }

            let next = Matrix(row: nextRow, column: nextColumn)
            if isVisited[next] ?? false { continue }

            if board[nextRow][nextColumn] == "O" {
                if nextRow == 0 || nextColumn == 0 || nextRow == board.count || nextColumn == board[0].count {
                    return nil
                }
                queue.append(next)
                isVisited[next] = true
                route.append(next)
            }
        }
    }
    return route
}

func flipO(_ positions: [Matrix], _ board: inout [[Character]]) {
    positions.forEach {
        board[$0.row][$0.column] = "X"
    }
}

func solve(_ board: [[Character]]) {
    var board = board

    for i in 0..<board.count {
        for j in 0..<board[i].count {
            let current = Matrix(row: i, column: j)
            if board[i][j] == "O" {
                if let OPositions = bfs(at: current, &board) {
                    flipO(OPositions, &board)
                }
            }
        }
    }
    print(board)
}


print(solve([["X","X","X","X"],["X","O","O","X"],["X","X","O","X"],["X","O","X","X"]])) //[["X","X","X","X"],["X","X","X","X"],["X","X","X","X"],["X","O","X","X"]]
print(solve([["X"]])) //[["X"]]
print(solve([["O","O"],["O","O"]])) //[["O","O"],["O","O"]]
print(solve([["O","X","O","O","O","O","O","O","O"],["O","O","O","X","O","O","O","O","X"],["O","X","O","X","O","O","O","O","X"],["O","O","O","O","X","O","O","O","O"],["X","O","O","O","O","O","O","O","X"],["X","X","O","O","X","O","X","O","X"],["O","O","O","X","O","O","O","O","O"],["O","O","O","X","O","O","O","O","O"],["O","O","O","O","O","X","X","O","O"]])) //[["O","X","O","O","O","O","O","O","O"],["O","O","O","X","O","O","O","O","X"],["O","X","O","X","O","O","O","O","X"],["O","O","O","O","X","O","O","O","O"],["X","O","O","O","O","O","O","O","X"],["X","X","O","O","X","O","X","O","X"],["O","O","O","X","O","O","O","O","O"],["O","O","O","X","O","O","O","O","O"],["O","O","O","O","O","X","X","O","O"]]
