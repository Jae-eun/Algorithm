//
//  backjoon_11866.swift
//  algo
//
//  Created by 이재은 on 03/01/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// <3, 6, 2, 7, 5, 1, 4>
// backjoon 11866 조세퍼스 문제 0
let input = readLine()!.split(separator: " ")
var people = Array(repeating: 0, count: Int(input[0])!)
var index = Int(input[1])!-1
var result = Array(repeating: "", count: Int(input[0])!)
for i in 0..<people.count {
    people[i] = i + 1
}
for i in 0..<people.count {
    result[i] = String(people[index])
    people.remove(at: index)
    index += Int(input[1])! - 1
    while (index >= people.count) {
        index -= people.count
        if (people.count == 0) {
            break
        }
    }
}
var str = "<\(result.map{"\($0)"}.reduce("") {"\($0), \($1)"}.dropFirst().dropFirst())>"
print(str)
