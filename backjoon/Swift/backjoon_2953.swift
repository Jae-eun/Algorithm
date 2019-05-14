//
//  backjoon_2953.swift
//  algo
//
//  Created by 이재은 on 15/05/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 2953 나는 요리사다
// 다섯 명의 참가자가 서로에게 1점부터 5점까지 점수를 평가함
// 첫번째 참가자부터 차례대로 4개의 점수 입력 받음
// 가장 많은 점수를 받은 사람의 번호와 총점을 출력

var score = [Int](repeating: 0, count: 5)
for person in 0..<5 {
    let input = readLine()!.split(separator: " ").map(){ Int($0)! }.reduce(0) { $0 + $1 }
    score[person] = input
}
let maxScore = score.max()
let maxIndex = score.index(of: maxScore!)
print("\(maxIndex!+1) \(maxScore!)")
