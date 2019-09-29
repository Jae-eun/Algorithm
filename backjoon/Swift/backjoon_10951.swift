//
//  backjoon_10951.swift
//  algo
//
//  Created by 이재은 on 13/01/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 10951 A + B - 4

while let input = readLine() {
    print(input.split(separator: " ").map { Int($0)! }.reduce(0, +))
}

