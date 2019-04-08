//
//  hackerRank_MarkAndToys.swift
//  algo
//
//  Created by 이재은 on 09/04/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// 가진 돈 k로 살 수 있는 장난감의 개수 구하기
// Practice > Interview Preparation Kit > Sorting > Mark and Toys
// https://www.hackerrank.com/challenges/mark-and-toys/problem

let prices = [1, 12, 5, 111, 200, 1000, 10]
let k = 50

func maximumToys(prices: [Int], k: Int) -> Int {
  var sortedPrices = prices.sorted()
  var money = k
  var result = 0
  
  for i in 0..<sortedPrices.count {
    money = money - sortedPrices[i]
    if money <= 0 {
      break
    }
    result += 1
  }
  return result
}

maximumToys(prices: prices, k: k)
