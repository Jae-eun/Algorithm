//
//  backjoon_5217.swift
//  fight
//
//  Created by 이재은 on 2021/01/26.
//  Copyright © 2021 jaeeun. All rights reserved.
//

//backjoon 쌍의 합 5217
//
//문제
//1보다 크거나 같고 12보다 작거나 같은 자연수 n이 주어졌을 때, 합이 n이 되는 두 자연수의 쌍을 찾는 프로그램을 작성하시오.
//
//예를 들어, 5가 주어진 경우 가능한 쌍은 1,4와 2,3이 있다. 두 수는 항상 달라야 한다. 즉, 3,3은 올바른 쌍이 아니다. 또, 첫 번째 수가 두 번째 수보다 작아야 한다.
//
//출력하는 쌍은 항상 사전순으로 출력해야 한다. 즉, 각 쌍의 작은 수로 비교를 해야 한다. 예를 들어 1,5는 2,4보다 사전순으로 앞선다.
//
//입력
//첫째 줄에 테스트 케이스의 수 (< 100)가 주어진다. 각 테스트 케이스는 한 줄로 이루어져 있고, n이 주어진다.
//
//출력
//각 테스트 케이스마다 n을 만드는 쌍을 사전순으로 출력한다. n을 만드는 쌍이 없는 경우에는 아무것도 출력하지 않는다.

// 풀이 1
for _ in 0..<Int(readLine()!)! {
    let n = Int(readLine()!)!

    print("Pairs for \(n):", terminator: "")
    for i in 1..<n / 2 + 1 {
        if i >= n - i {
            continue
        }
        if n + -2 * i == 1 || n + -2 * i == 2 {
            print(" \(i) \(n - i)", terminator: "")
        } else {
            print(" \(i) \(n - i)", terminator: ",")
        }
    }
    print()
}


// 풀이 2
for _ in 0..<Int(readLine()!)! {
    let n = Int(readLine()!)!
    var a = 1, b = n - a
    
    var arr = [String]()
    while a < b {
        arr.append("\(a) \(b)")
        a += 1
        b = n - a
    }
    print("Pairs for \(n): " + arr.joined(separator: ", "))
}

//4
//2
//3
//4
//5
//답
//Pairs for 2:
//Pairs for 3: 1 2
//Pairs for 4: 1 3
//Pairs for 5: 1 4, 2 3
