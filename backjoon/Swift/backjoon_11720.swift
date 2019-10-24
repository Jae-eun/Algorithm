//
//  backjoon_11720.swift
//  algo
//
//  Created by 이재은 on 08/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

let input = Int(readLine()!)!
let number = readLine()!
var sum = 0
for num in number {
    sum += Int(String(num))!
}
print(sum)
