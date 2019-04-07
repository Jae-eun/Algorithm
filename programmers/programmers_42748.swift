//
//  programmers_42748.swift
//  algo
//
//  Created by 이재은 on 06/04/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

// 코딩테스트 연습 K번째 수
import Foundation

let array = [1, 5, 2, 6, 3, 7, 4]
let commands = [[2, 5, 3], [4, 4, 1], [1, 7, 3]]
var result = [Int]()
var cutArray = [Int]()
func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
  var result = [Int]()
  var cutArray = [Int]()
  for i in 0..<commands.count {
    cutArray = []
    for index in commands[i][0]-1..<commands[i][1] {
      cutArray.append(array[index])
    }
    cutArray.sort()
    result.append(cutArray[commands[i][2]-1])
  }
  return result
}
solution(array, commands)
