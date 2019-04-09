//
//  hackerRank_MakingAnagrams.swift
//  algo
//
//  Created by 이재은 on 09/04/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// a와 b가 anagram이 되려면 몇개의 글자가 지워져야 되는지 세기
// Practice > Interview Preparation Kit > String Manipulation > Strings: Making Anagrams
// https://www.hackerrank.com/challenges/ctci-making-anagrams/problem

let a = "fcrxzwscanmligyxyvym"
let b = "jxwtrhvujlmrpdoqbisbwhmgpmeoke"

func makeAnagram(a: String, b: String) -> Int {
  var contained = 0
  var result = 0
  var s1 = a.sorted()
  var s2 = b.sorted()
  
  for i in 0..<s1.count {
    if s2.contains(s1[i]) {
      contained += 1
      if let index = s2.index(of: s1[i]) {
        s2.remove(at: index)
      }
    }
  }
  result = s1.count + s2.count - contained
  return result
}

makeAnagram(a: a, b: b)
