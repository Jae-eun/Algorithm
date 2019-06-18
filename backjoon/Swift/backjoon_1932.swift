//
//  backjoon_1932.swift
//  algo
//
//  Created by 이재은 on 18/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 1932 정수 삼각형
// 맨 위층부터 시작해서 아래에 있는 수 중 하나를 선택하여 아래층으로 내려옴
// 선택된 수의 합이 최대가 되는 경로를 구함
// 삼각형의 수는 0 이상 9999 이하 정수
// 첫째 줄에 삼각형의 크기 n(1 ≤ n ≤ 500)이 주어지고, 둘째 줄부터 n+1번째 줄까지 정수 삼각형

var triangle = [[Int]]()
let n = Int(readLine()!)!
var maxResult = 0

for _ in 0..<n {
    let number = readLine()!.split(separator: " ").map{ Int($0)! }
    triangle.append(number)
}
for i in 1..<n {
    for j in 0...i {
        if j == 0 {
            triangle[i][j] = triangle[i-1][j] + triangle[i][j]
        } else if i == j {
            triangle[i][j] = triangle[i-1][j-1] + triangle[i][j]
        } else {
            triangle[i][j] = max(triangle[i-1][j-1], triangle[i-1][j]) + triangle[i][j]
        }
        if(maxResult < triangle[i][j]) {
            maxResult = triangle[i][j]
        }
    }
}
print(maxResult)
