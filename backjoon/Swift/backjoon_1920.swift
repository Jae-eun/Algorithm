//
//  backjoon_1920.swift
//  algo
//
//  Created by 이재은 on 06/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 1920 수 찾기
// N개의 정수 A[1], A[2], …, A[N]이 주어져 있을 때, 이 안에 X라는 정수가 존재하는지 알아내기
// 첫째 줄에 자연수 N(1≤N≤100,000)이 주어짐. 다음 줄에는 N개의 정수 A[1], A[2], …, A[N]이 주어짐.
// 다음 줄에는 M(1≤M≤100,000)이 주어짐. 다음 줄에는 M개의 수들이 주어짐
// M개의 줄에 답을 출력한다. 존재하면 1을, 존재하지 않으면 0을 출력

func binarySearch(_ arr: [Int], target: Int) -> Int {
    var start = 0
    var end = arr.count - 1
    var mid = (end + start) / 2

    while end - start >= 0 {
        if arr[mid] == target {
            return 1
        } else if arr[mid] <= target {
            start = mid + 1
        } else {
            end = mid - 1
        }
        mid = (end + start) / 2
    }
    return 0
}

let N = Int(readLine()!)!
var array = readLine()!.split(separator: " ").map() { Int($0)! }
var changeSet = Set(array).sorted()
let M = Int(readLine()!)!
var number = readLine()!.split(separator: " ").map() { Int($0)! }

for n in number {
    print(binarySearch(changeSet, target: n))
}

//5
//4 1 5 2 3
//5
//1 3 7 9 5
//답
//1
//1
//0
//0
//1

