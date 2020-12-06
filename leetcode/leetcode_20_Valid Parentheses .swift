//
//  leetcode_20_Valid Parentheses .swift
//  fight
//
//  Created by 이재은 on 2020/11/25.
//  Copyright © 2020 jaeeun. All rights reserved.
//

import Foundation

//LeetCode 20. Valid Parentheses

// 주어진 s의 괄호가 짝이 맞아 유효한지 무효한지 구하기

//Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//
//An input string is valid if:
//
//Open brackets must be closed by the same type of brackets.
//Open brackets must be closed in the correct order.
//
//
//Example 1:
//
//Input: s = "()"
//Output: true

//Example 2:
//
//Input: s = "()[]{}"
//Output: true

//Example 3:
//
//Input: s = "(]"
//Output: false

//Example 4:
//
//Input: s = "([)]"
//Output: false

//Example 5:
//
//Input: s = "{[]}"
//Output: true
//
//
//Constraints:
//
//1 <= s.length <= 10^4
//s consists of parentheses only '()[]{}'.

// 풀이 1
func isValid(_ s: String) -> Bool {
    var parentheses = [String]()
    if s.count % 2 != 0 { return false }
    
    s.forEach {
        switch $0 {
        case ")":
            if parentheses.last == "(" {
                parentheses.removeLast()
            } else {
                parentheses.append(String($0))
            }
        case "]":
            if parentheses.last == "[" {
                parentheses.removeLast()
            } else {
                parentheses.append(String($0))
            }
        case "}":
            if parentheses.last == "{" {
                parentheses.removeLast()
            } else {
                parentheses.append(String($0))
            }
        default:
            parentheses.append(String($0))
        }
    }
    return parentheses.isEmpty
}


// 풀이 2
func isValid(_ s: String) -> Bool {
    let parentheses = [")": "(", "]": "[", "}": "{"]
    var stack = [String]()
    for text in s {
        if let openP = parentheses[String(text)] {
            if stack.last == openP {
                stack.removeLast()
            } else {
                return false
            }
        } else {
            stack.append(String(text))
        }
    }
    return stack.isEmpty
}

print(isValid("()")) // true
print(isValid("()[]{}")) // true
print(isValid("(]")) // false
print(isValid("([)]")) // false
print(isValid("{[]}")) // true
print(isValid("]")) // false
print(isValid(")(){}")) // false
