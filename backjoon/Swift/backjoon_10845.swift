//
//  backjoon_10845.swift
//  algo
//
//  Created by 이재은 on 2020/08/22.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon 10845 큐
//
//문제
//정수를 저장하는 큐를 구현한 다음, 입력으로 주어지는 명령을 처리하는 프로그램을 작성하시오.
//
//명령은 총 여섯 가지이다.
//
//push X: 정수 X를 큐에 넣는 연산이다.
//pop: 큐에서 가장 앞에 있는 정수를 빼고, 그 수를 출력한다. 만약 큐에 들어있는 정수가 없는 경우에는 -1을 출력한다.
//size: 큐에 들어있는 정수의 개수를 출력한다.
//empty: 큐가 비어있으면 1, 아니면 0을 출력한다.
//front: 큐의 가장 앞에 있는 정수를 출력한다. 만약 큐에 들어있는 정수가 없는 경우에는 -1을 출력한다.
//back: 큐의 가장 뒤에 있는 정수를 출력한다. 만약 큐에 들어있는 정수가 없는 경우에는 -1을 출력한다.
//입력
//첫째 줄에 주어지는 명령의 수 N (1 ≤ N ≤ 10,000)이 주어진다. 둘째 줄부터 N개의 줄에는 명령이 하나씩 주어진다. 주어지는 정수는 1보다 크거나 같고, 100,000보다 작거나 같다. 문제에 나와있지 않은 명령이 주어지는 경우는 없다.
//
//출력
//출력해야하는 명령이 주어질 때마다, 한 줄에 하나씩 출력한다.

//15
//push 1
//push 2
//front
//back
//size
//empty
//pop
//pop
//pop
//size
//empty
//pop
//push 3
//empty
//front
//
//1
//2
//2
//0
//1
//2
//-1
//0
//1
//-1
//0
//3

public struct Queue {
    private var array: [Int]

    public init() {
        array = []
    }

    public mutating func push(_ element: Int) {
        array.append(element)
    }

    public mutating func pop() -> Int {
        return array.isEmpty ? -1 : array.removeFirst()
    }

    public var size: Int {
        return array.count
    }

    public func isEmpty() -> Int {
        return array.isEmpty ? 1 : 0
    }

    public func front() -> Int {
        return array.isEmpty ? -1 : array.first!
    }

    public func back() -> Int {
        return array.isEmpty ? -1 : array.last!
    }
}

let N = Int(readLine()!)!
var queue = Queue()
for _ in 0..<N {
    let input = readLine()!.split(separator: " ")
    switch input[0] {
    case "push":
        queue.push(Int(input[1])!)
    case "pop":
        print(queue.pop())
    case "size":
        print(queue.size)
    case "empty":
        print(queue.isEmpty())
    case "front":
        print(queue.front())
    default:
        print(queue.back())
    }
}
