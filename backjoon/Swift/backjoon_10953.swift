//
//  backjoon_10953.swift
//  algo
//
//  Created by 이재은 on 25/07/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 10953 A+B - 6
// 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
//
// 첫째 줄에 테스트 케이스의 개수 T가 주어진다.
//
// 각 테스트 케이스는 한 줄로 이루어져 있으며, 각 줄에 A와 B가 주어진다. A와 B는 콤마(,)로 구분되어 있다. (0 < A, B < 10)
//
// 각 테스트 케이스마다 A+B를 출력한다.
let testcase = Int(readLine()!)!
for _ in 1...testcase {
    print(readLine()!.split(separator: ",").map{ Int($0)!}.reduce(0, +))
}
