//
//  backjoon_11651.swift
//  algo
//
//  Created by 이재은 on 28/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

//backjoon 좌표 정렬하기 2 11651
//
//2차원 평면 위의 점 N개가 주어진다. 좌표를 y좌표가 증가하는 순으로, y좌표가 같으면 x좌표가 증가하는 순서로 정렬한 다음 출력하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 점의 개수 N (1 ≤ N ≤ 100,000)이 주어진다. 둘째 줄부터 N개의 줄에는 i번점의 위치 xi와 yi가 주어진다. (-100,000 ≤ xi, yi ≤ 100,000) 좌표는 항상 정수이고, 위치가 같은 두 점은 없다.
//
//출력
//첫째 줄부터 N개의 줄에 점을 정렬한 결과를 출력한다.

let n = Int(readLine()!)!
var location = [[Int]]()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    location.append(input)
}

location.sort() { a, b in
    if a[1] == b[1] {
        return a[0] < b[0]
    } else {
        return a[1] < b[1]
    }
}

location.forEach { a in
    print("\(a[0]) \(a[1])")
}

//5
//0 4
//1 2
//1 -1
//2 2
//3 3
//답
//1 -1
//1 2
//2 2
//3 3
//0 4
