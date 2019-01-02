//
//  backjoon_2789.swift
//  algo
//
//  Created by 이재은 on 03/01/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 2789 유학 금지

var input = readLine() ?? ""
let arr = ["C","A","M","B","R","I","D","G","E"]
for i in 0..<arr.count {
    input = input.replacingOccurrences(of: arr[i], with: "")
}
print(input)
