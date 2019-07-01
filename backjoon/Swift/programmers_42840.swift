//
//  programmers_42840.swift
//  algo
//
//  Created by 이재은 on 02/07/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 42840 모의고사
// 수포자 삼인방은 모의고사에 수학 문제를 전부 찍으려 합니다. 수포자는 1번 문제부터 마지막 문제까지 다음과 같이 찍습니다.
//
// 1번 수포자가 찍는 방식: 1, 2, 3, 4, 5, / 1, 2, 3, 4, 5, ...
// 2번 수포자가 찍는 방식: 2, 1, 2, 3, 2, 4, 2, 5, / 2, 1, 2, 3, 2, 4, 2, 5, ...
// 3번 수포자가 찍는 방식: 3, 3, 1, 1, 2, 2, 4, 4, 5, 5, / 3, 3, 1, 1, 2, 2, 4, 4, 5, 5, ...
//
// 1번 문제부터 마지막 문제까지의 정답이 순서대로 들은 배열 answers가 주어졌을 때, 가장 많은 문제를 맞힌 사람이 누구인지 배열에 담아 return
//
// 시험은 최대 10,000 문제로 구성
// 문제의 정답은 1, 2, 3, 4, 5중 하나
// 가장 높은 점수를 받은 사람이 여럿일 경우, 오름차순 정렬하여 리턴

func solution(_ answers:[Int]) -> [Int] {
    var result = [Int]()
    var maxCorrect = 0
    let firstSupo = [1, 2, 3, 4, 5]
    let secondSupo = [2, 1, 2, 3, 2, 4, 2, 5]
    let thirdSupo = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var index = 0
    var correct = [0, 0, 0]
    
    for i in 0..<answers.count {
        index = i % firstSupo.count
        if answers[i] == firstSupo[index] {
            correct[0] += 1
        }
        index = i % secondSupo.count
        if answers[i] == secondSupo[index] {
            correct[1] += 1
        }
        index = i % thirdSupo.count
        if answers[i] == thirdSupo[index] {
            correct[2] += 1
        }
    }
    maxCorrect = correct.max()!
    
    for i in 0..<correct.count {
        if maxCorrect == correct[i] {
            result.append(i+1)
        }
    }
    
    return result
}

print(solution([1,2,3,4,5,1,2,3,4,5]))
