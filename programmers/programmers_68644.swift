//
//  programmers_68644.swift
//  algo
//
//  Created by 이재은 on 2020/09/22.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//programmers 68644 두 개 뽑아서 더하기

//문제 설명
//[프로그래머스 문제 제작자 채용공고 보러 가기]
//
//정수 배열 numbers가 주어집니다. numbers에서 서로 다른 인덱스에 있는 두 개의 수를 뽑아 더해서 만들 수 있는 모든 수를 배열에 오름차순으로 담아 return 하도록 solution 함수를 완성해주세요.
//
//제한사항
//numbers의 길이는 2 이상 100 이하입니다.
//numbers의 모든 수는 0 이상 100 이하입니다.
//입출력 예
//numbers    result
//[2,1,3,4,1]    [2,3,4,5,6,7]
//[5,0,2,7]    [2,5,7,9,12]
//입출력 예 설명
//입출력 예 #1
//
//2 = 1 + 1 입니다. (1이 numbers에 두 개 있습니다.)
//3 = 2 + 1 입니다.
//4 = 1 + 3 입니다.
//5 = 1 + 4 = 2 + 3 입니다.
//6 = 2 + 4 입니다.
//7 = 3 + 4 입니다.
//따라서 [2,3,4,5,6,7] 을 return 해야 합니다.
//입출력 예 #2
//
//2 = 0 + 2 입니다.
//5 = 5 + 0 입니다.
//7 = 0 + 7 = 5 + 2 입니다.
//9 = 2 + 7 입니다.
//12 = 5 + 7 입니다.
//따라서 [2,5,7,9,12] 를 return 해야 합니다.

func solution(_ numbers: [Int]) -> [Int] {
    var result = Set<Int>()

    for i in 0..<numbers.count - 1 {
        for j in i + 1..<numbers.count {
            result.insert(numbers[i] + numbers[j])
        }
    }
    return result.sorted()
}

print(solution([2,1,3,4,1])) // [2,3,4,5,6,7]
print(solution([5,0,2,7])) // [2,5,7,9,12]
