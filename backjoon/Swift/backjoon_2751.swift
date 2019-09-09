//
//  backjoon_2751.swift
//  algo
//
//  Created by 이재은 on 10/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 수 정렬하기 2 2751

// N개의 수가 주어졌을 때, 이를 오름차순으로 정렬하는 프로그램을 작성하시오.
//
// 입력
// 첫째 줄에 수의 개수 N(1 ≤ N ≤ 1,000,000)이 주어진다. 둘째 줄부터 N개의 줄에는 숫자가 주어진다. 이 수는 절댓값이 1,000,000보다 작거나 같은 정수이다. 수는 중복되지 않는다.
//
// 출력
// 첫째 줄부터 N개의 줄에 오름차순으로 정렬한 결과를 한 줄에 하나씩 출력한다.

let n = Int(readLine()!)!
var number = [Int]()

for _ in 0..<n {
    let input = Int(readLine()!)!
    number.append(input)
}
number.sorted().forEach { print($0) }


//5
//5
//4
//3
//2
//1
//
//1
//2
//3
//4
//5
