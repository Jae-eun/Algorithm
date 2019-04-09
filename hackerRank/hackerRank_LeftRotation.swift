//
//  hackerRank_LeftRotation.swift
//  algo
//
//  Created by 이재은 on 09/04/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// a를 왼쪽으로 d번 로테이션한 결과 구하기
// Practice > Interview Preparation Kit > Arrays > Arrays: Left Rotation
// https://www.hackerrank.com/challenges/ctci-array-left-rotation/problem

let d = 60581
let a = [1, 2, 3, 4, 5]

func rotLeft(a: [Int], d: Int) -> [Int] {
  var array = a
  
  for _ in 0..<d {
    array.append(array[0])
    array.removeFirst()
  }
  return array
}
rotLeft(a: a, d: d)
