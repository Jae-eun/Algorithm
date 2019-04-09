//
//  hackerRank_AlternatingCharacters.swift
//  algo
//
//  Created by 이재은 on 09/04/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// 주어진 글자가 A, B가 번갈아 나오도록 하려면 몇 개의 글자를 지워야 하는지 찾기
// Practice > Interview Preparation Kit > String Manipulation > Alternating Characters
// https://www.hackerrank.com/challenges/alternating-characters/problem

let s = "AAABBB"

func alternatingCharacters(s: String) -> Int {
  var result = 0
  let string = s.map { String($0) }
  
  for i in 0..<s.count-1 {
    if string[i] == "A" {
      if string[i+1] != "B" {
        result += 1
      }
    } else {
      if string[i+1] != "A" {
        result += 1
      }
    }
  }
  return result
}

alternatingCharacters(s: s)
