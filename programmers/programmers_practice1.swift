//
//  programmers_practice1.swift
//  algo
//
//  Created by 이재은 on 06/04/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

// 주어진 3개 좌표 이외의 마지막 직사각형 좌표 구하기
import Foundation

func solution(_ v: [[Int]]) -> [Int]
{
  var ans = [Int]()
  var x = [Int]()
  var y = [Int]()
  for i in 0..<v.count {
    if x.contains(v[i][0])  {
      let index = x.index(of: v[i][0])!
      x.remove(at: index)
    } else {
      x.append(v[i][0])
    }
    if y.contains(v[i][1]) {
      let index = y.index(of: v[i][1])!
      y.remove(at: index)
    } else {
      y.append(v[i][1])
    }
  }
  ans = x+y
  return ans
}
