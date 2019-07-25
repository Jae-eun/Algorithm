//
//  backjoon_15740.swift
//  algo
//
//  Created by 이재은 on 25/07/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 15740 A+B - 9
// 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.
//
// 첫째 줄에 A와 B (-1010000 ≤ A, B ≤ 1010000)가 주어진다.
//
// 첫째 줄에 A+B를 출력한다.

print(readLine()!.split(separator: " ").map{ Int($0)!}.reduce(0, +))
