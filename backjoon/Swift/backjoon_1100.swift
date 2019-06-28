//
//  backjoon_1100.swift
//  algo
//
//  Created by 이재은 on 29/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 1100 하얀 칸
// 체스판은 8*8크기이고, 검정 칸과 하얀 칸이 번갈아가면서 색칠되어 있다. 가장 왼쪽 위칸 (0,0)은 하얀색이다.
// 체스판의 상태가 주어졌을 때, 하얀 칸 위에 말이 몇 개 있는지 출력
// 첫째 줄부터 8개의 줄에 체스판의 상태가 주어진다. ‘.’은 빈 칸이고, ‘F’는 위에 말이 있는 칸이다.

//.F.F...F
//F...F.F.
//...F.F.F
//F.F...F.
//    .F...F..
//F...F.F.
//    .F.F.F.F
//..FF..F.

var horseCount = 0

for i in 0..<8 {
    let chess = readLine()!.map{ String($0) }
    for j in 0..<8 {
        if (i + j) % 2 == 0 && chess[j] == "F" {
            horseCount += 1
        }
    }
}
print(horseCount)
