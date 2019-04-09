//
//  hackerRank_2DArrayDS.swift
//  algo
//
//  Created by 이재은 on 09/04/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// 주어진 2차원 배열 arr을 3줄짜리 피라미드 모양으로 더했을 때 최댓값 구하기
// ** 결과의 최솟값 잘 고려하기
// Practice > Interview Preparation Kit > Arrays > 2D Array - DS
// https://www.hackerrank.com/challenges/2d-array/problem

let arr = [[0, -4, -6, 0, -7, -6], [-1, -2, -6, -8, -3, -1], [-8, -4, -2, -8, -8, -6], [-3, -1, -2, -5, -7, -4], [-3, -5, -3, -6, -6, -6], [-3, -6, 0, -8, -6, -7]]

func hourglassSum(arr: [[Int]]) -> Int {
  var max = -63
  var result = 0
  var first = 0
  var second = 0
  var third = 0
  for i in 0..<arr.count-2 {
    for j in 0..<arr[i].count-2 {
      first = arr[i][j] + arr[i][j+1] + arr[i][j+2]
      second = arr[i+1][j+1]
      third = arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
      result = first + second + third
      print(result)
      if result > max {
        max = result
      }
    }
  }
  return max
}

hourglassSum(arr: arr)
