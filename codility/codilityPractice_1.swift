//
//  codilityPractice_1.swift
//  algo
//
//  Created by 이재은 on 13/03/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

// 주어진 숫자 2진수 변환 후, 제일 긴 0개의 길이 찾기
import Foundation

var zeroCount = 0
var endCount = 0
var result = 0

public func solution(_ N : Int) -> Int {
  // write your code in Swift 4.2.1 (Linux)
  let binary = String(N, radix: 2)
  let array = binary.compactMap{Int(String($0))}
  for index in 0..<array.count-1 {
    if array[index] == 0 && array[index+1] == 0 {
      zeroCount += 1
    } else if array[index] == 0 && array[index+1] == 1 {
      endCount += 1
      if zeroCount >= result {
        result = zeroCount + 1
      }
      zeroCount = 0
    }
  }
  if endCount == 0 {
    return 0
  } else {
    return result
  }
}
//solution(1041)
