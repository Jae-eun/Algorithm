//
//  programmers_42842.swift
//  algo
//
//  Created by 이재은 on 2020/09/04.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//programmers 42842 카펫

//문제 설명
//Leo는 카펫을 사러 갔다가 아래 그림과 같이 중앙에는 노란색으로 칠해져 있고 테두리 1줄은 갈색으로 칠해져 있는 격자 모양 카펫을 봤습니다.
//
//carpet.png
//
//Leo는 집으로 돌아와서 아까 본 카펫의 노란색과 갈색으로 색칠된 격자의 개수는 기억했지만, 전체 카펫의 크기는 기억하지 못했습니다.
//
//Leo가 본 카펫에서 갈색 격자의 수 brown, 노란색 격자의 수 yellow가 매개변수로 주어질 때 카펫의 가로, 세로 크기를 순서대로 배열에 담아 return 하도록 solution 함수를 작성해주세요.
//
//제한사항
//갈색 격자의 수 brown은 8 이상 5,000 이하인 자연수입니다.
//노란색 격자의 수 yellow는 1 이상 2,000,000 이하인 자연수입니다.
//카펫의 가로 길이는 세로 길이와 같거나, 세로 길이보다 깁니다.
//입출력 예
//brown    yellow    return
//10        2       [4, 3]
//8         1       [3, 3]
//24        24      [8, 6]

func solution(_ brown: Int, _ yellow: Int) -> [Int] {
    let carpet = brown + yellow
    var size = [Int]()

    for i in 3...carpet / 3 where carpet % i == 0 {
        let width =  carpet / i
        if size.count == 2 {
            break
        }
        if (i - 2) * (width - 2) == yellow {
            size.append(width)
            size.append(i)
        }
    }
    return size
}

print(solution(10, 2)) // [4, 3]
print(solution(8, 1)) // [3, 3]
print(solution(24, 24)) // [8, 6]
print(solution(50, 22)) // [24, 3]
print(solution(18, 6)) // [8, 3]
print(solution(14, 4)) // [6, 3]
