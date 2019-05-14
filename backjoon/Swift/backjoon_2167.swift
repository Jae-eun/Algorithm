//
//  backjoon_2167.swift
//  algo
//
//  Created by 이재은 on 15/05/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 2167 2차원 배열의 합
// 2차원 배열 (i,j) 위치부터 (x,y) 위치까지에 저장되어 있는 수들의 합을 구하는 프로그램
// 첫째 줄 배열의 크기 N, M(1 ≤ N, M ≤ 300). 다음 N개의 줄에는 M개의 정수로 배열. 배열 안의 수는 절댓값이 10,000보다 작거나 같은 정수이다. 그 다음 줄에는 합을 구할 부분의 개수 K(1 ≤ K ≤ 10,000)가 주어진다. 다음 K개의 줄에는 네 개의 정수로 i, j, x, y가 주어진다(i ≤ x, j ≤ y)
// K개의 줄에 순서대로 배열의 합을 출력

let arraySize = readLine()!.split(separator: " ").map(){ Int($0)! }
var twoDimensional = [[Int]]()
for _ in 0..<arraySize[0] {
    let input = readLine()!.split(separator: " ").map(){ Int($0)! }
    twoDimensional.append(input)
}
let num = Int(readLine()!)!
for _ in 0..<num {
    var result = 0
    let range = readLine()!.split(separator: " ").map(){ Int($0)! }
    for i in range[0]-1...range[2]-1 {
        for j in range[1]-1...range[3]-1 {
            result += twoDimensional[i][j]
        }
    }
    print(result)
}
