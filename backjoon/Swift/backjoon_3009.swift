//
//  backjoon_3009.swift
//  algo
//
//  Created by 이재은 on 26/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 3009 네 번째 점
// 세 점이 주어졌을 때, 축에 평행한 직사각형을 만들기 위해서 필요한 네 번째 점을 찾는 프로그램을 작성하시오.
//
// 입력
// 세 점의 좌표가 한 줄에 하나씩 주어진다. 좌표는 1보다 크거나 같고, 1000보다 작거나 같은 정수이다.
//
// 출력
// 직사각형의 네 번째 점의 좌표를 출력한다.

var x = [Int]()
var y = [Int]()

for _ in 0..<3 {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if x.contains(input[0]) {
        let index = x.index(of: input[0])
        x.remove(at: index!)
    } else {
        x.append(input[0])
    }
    if y.contains(input[1]) {
        let index = y.index(of: input[1])
        y.remove(at: index!)
    } else {
        y.append(input[1])
    }
}
print("\(x[0]) \(y[0])")

//30 20
//10 10
//10 20
//
//답 30 10
