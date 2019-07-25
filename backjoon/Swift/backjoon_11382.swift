//
//  backjoon_11382.swift
//  algo
//
//  Created by 이재은 on 25/07/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 11382 꼬마 정민
//
// 꼬마 정민이는 이제 A + B 정도는 쉽게 계산할 수 있다. 이제 A + B+ C를 계산할 차례이다!
//
// 첫 번째 줄에 A, B, C (1 ≤ A, B, C ≤ 1012)이 공백을 사이에 두고 주어진다.

print(readLine()!.split(separator: " ").map{ Int($0)!}.reduce(0, +))
