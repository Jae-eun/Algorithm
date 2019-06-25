//
//  programmers_12950.swift
//  algo
//
//  Created by 이재은 on 26/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

//programmers 12950 행렬의 덧셈
// 행렬의 덧셈은 행과 열의 크기가 같은 두 행렬의 같은 행, 같은 열의 값을 서로 더한 결과가 됩니다.
// 2개의 행렬 arr1과 arr2를 입력받아, 행렬 덧셈의 결과를 반환
// 행렬 arr1, arr2의 행과 열의 길이는 500을 넘지 않습니다.

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result = arr1
    for i in 0..<arr1.count {
        for j in 0..<arr1[i].count {
            result[i][j] = arr1[i][j] + arr2[i][j]
        }
    }
    return result
}
