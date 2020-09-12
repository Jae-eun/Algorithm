//
//  backjoon_9316.swift
//  algo
//
//  Created by 이재은 on 2020/09/13.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon 9316 Hello Judge

//문제
//당신은 N개의 테스트케이스들에게 반드시 인사를 해야 이 문제를 풀 수 있다.
//
//N개의 줄에 걸쳐
//
//"Hello World, Judge i!"
//
//를 출력하는 프로그램을 만들라. 여기서 i는 줄의 번호이다.
//
//입력
//N이 주어진다. (1 ≤ N ≤ 200)
//
//출력
//한 줄에 하나의 Hello World, Judge i! 를 출력한다.

for i in 1...Int(readLine()!)! {
    print("Hello World, Judge \(i)!")
}

//3
//답
//Hello World, Judge 1!
//Hello World, Judge 2!
//Hello World, Judge 3!
