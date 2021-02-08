//
//  backjoon_2566.swift
//  fight
//
//  Created by 이재은 on 2021/02/08.
//  Copyright © 2021 jaeeun. All rights reserved.
//

//backjoon 최댓값 2566
//
//문제
//<그림 1>과 같이 9×9 격자판에 쓰여진 81개의 자연수가 주어질 때, 이들 중 최댓값을 찾고 그 최댓값이 몇 행 몇 열에 위치한 수인지 구하는 프로그램을 작성하시오.
//
//예를 들어, 다음과 같이 81개의 수가 주어지면
//이들 중 최댓값은 90이고, 이 값은 5행 7열에 위치한다.
//
//입력
//첫째 줄부터 아홉 번째 줄까지 한 줄에 아홉 개씩 자연수가 주어진다. 주어지는 자연수는 100보다 작다.
//
//출력
//첫째 줄에 최댓값을 출력하고, 둘째 줄에 최댓값이 위치한 행 번호와 열 번호를 빈칸을 사이에 두고 차례로 출력한다. 최댓값이 두 개 이상인 경우 그 중 한 곳의 위치를 출력한다.

var table = [(row: Int, column: Int, value: Int)]()

for row in 1...9 {
    let num = readLine()!.split(separator: " ").map { Int(String($0))! }
    for (index, value) in num.enumerated() {
        table.append(contentsOf: [(row: row, column: index + 1, value: value)])
    }
}

let max = table.max { $0.value < $1.value }!.value
let index = table.firstIndex { $0.value == max }!
print(table[index].value)
print("\(table[index].row) \(table[index].column)")

//3 23 85 34 17 74 25 52 65
//10 7 39 42 88 52 14 72 63
//87 42 18 78 53 45 18 84 53
//34 28 64 85 12 16 75 36 55
//21 77 45 35 28 75 90 76 1
//25 87 65 15 28 11 37 28 74
//65 27 75 41 7 89 78 64 39
//47 47 70 45 23 65 3 41 44
//87 13 82 38 31 12 29 29 80
//답
//90
//5 7

