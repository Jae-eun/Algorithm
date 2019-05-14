//
//  backjoon_10039.swift
//  algo
//
//  Created by 이재은 on 14/05/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 10039 평균 점수
// 주어진 학생 5명의 평균 점수 구하기
// 40점 미만일 경우 40점을 받게 됨
// 점수는 모두 0점 이상 100점 이하인 5의 배수, 평균은 항상 정수

var sum = 0
for _ in 0..<5 {
    var input = Int(readLine()!)!
    if input < 40 {
        input = 40
    }
    sum += input
}
print(sum/5)
