//
//  58. Length of Last Word leetcode.swift
//  algo
//
//  Created by 이재은 on 25/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

//58. Length of Last Word leetcode
//
//Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word in the string.
//
//If the last word does not exist, return 0.
//
//Note: A word is defined as a character sequence consists of non-space characters only.

func lengthOfLastWord(_ s: String) -> Int {
    let word = s.split(separator: " ").map { String($0) }
    if word.count > 0 {
        return word.last!.count
    }
    return 0
}

print(lengthOfLastWord("Hello World")) // 5
print(lengthOfLastWord("")) // 0
print(lengthOfLastWord(" ")) // 0
print(lengthOfLastWord("  ")) // 0

//Input: "Hello World"
//Output: 5
