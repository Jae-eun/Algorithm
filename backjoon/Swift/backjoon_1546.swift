//
//  backjoon_1546.swift
//  algo
//
//  Created by 이재은 on 07/05/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 1546 평균
// 시험 본 과목 N과 현재 점수가 주어짐
// 그 중 가장 높은 점수로 점수를 조작했을 때, 새로운 평균값을 구하기
// 모든 점수를 점수/최댓값*100으로 고침

let N = Double(readLine()!)!
let score = readLine()!.split(separator: " ").map() { Double($0)! }
let maxScore = score.max()
var average = score.reduce(0, +)
print(average / N / maxScore! * 100)
