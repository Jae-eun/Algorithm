//
//  hackerRank_SockMarchant.swift
//  algo
//
//  Created by 이재은 on 07/04/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// 주어진 양말의 종류에 따른 짝 개수 찾기

let n = 1
let ar = [100]
func sockMerchant(n: Int, ar: [Int]) -> Int {
  var socks = ar.sorted()
  var pairs = 0
  var i = 0
  if n == 1 {
    return 0
  }
  repeat {
    if socks[i] == socks[i+1] {
      pairs += 1
      i += 2
    } else {
      i += 1
    }
  } while i < socks.count-1
  return pairs
}
sockMerchant(n: n, ar: ar)
