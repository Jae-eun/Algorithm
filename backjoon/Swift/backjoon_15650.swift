//
//  backjoon_15650.swift
//  fight
//
//  Created by 이재은 on 2021/03/02.
//  Copyright © 2021 jaeeun. All rights reserved.
//

//backjoon N과 M (2) 15650
//
//문제
//자연수 N과 M이 주어졌을 때, 아래 조건을 만족하는 길이가 M인 수열을 모두 구하는 프로그램을 작성하시오.
//
//1부터 N까지 자연수 중에서 중복 없이 M개를 고른 수열
//고른 수열은 오름차순이어야 한다.
//입력
//첫째 줄에 자연수 N과 M이 주어진다. (1 ≤ M ≤ N ≤ 8)
//
//출력
//한 줄에 하나씩 문제의 조건을 만족하는 수열을 출력한다. 중복되는 수열을 여러 번 출력하면 안되며, 각 수열은 공백으로 구분해서 출력해야 한다.
//
//수열은 사전 순으로 증가하는 순서로 출력해야 한다.

let NM = readLine()!.split(separator: " ").compactMap { Int($0) }
var isVisited = [Bool](repeating: false, count: NM[0] + 1)
var result = [Int](repeating: 0, count: NM[1])

func backtracking(index: Int, num: Int, count: Int) {
    if index == count {
        print(result.map { String($0) }.joined(separator: " "))
        return
    }
    
    for i in 1...num {
        if isVisited[i] { continue }
        if index > 0 && result[index - 1] > i { continue }
        
        isVisited[i] = true
        result[index] = i
        backtracking(index: index + 1, num: NM[0], count: NM[1])
        isVisited[i] = false
    }
}

backtracking(index: 0, num: NM[0], count: NM[1])

//3 1
//답
//1
//2
//3
//
//4 2
//답
//1 2
//1 3
//1 4
//2 3
//2 4
//3 4
//
//4 4
//답
//1 2 3 4
