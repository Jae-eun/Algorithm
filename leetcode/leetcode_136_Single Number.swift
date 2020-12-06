//
//  leetcode_136_Single Number.swift
//  fight
//
//  Created by 이재은 on 2020/11/27.
//  Copyright © 2020 jaeeun. All rights reserved.
//

import Foundation

// LeetCode 136. Single Number

// 주어진 배열에서 하나의 숫자를 빼고 나머지는 모두 2개씩 들어있음
// 개수가 하나인 원소를 구하기

//Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
//
//Follow up: Could you implement a solution with a linear runtime complexity and without using extra memory?
//
//
//Example 1:
//
//Input: nums = [2,2,1]
//Output: 1
//Example 2:
//
//Input: nums = [4,1,2,1,2]
//Output: 4
//Example 3:
//
//Input: nums = [1]
//Output: 1
//
//Constraints:
//
//1 <= nums.length <= 3 * 10^4
//-3 * 10^4 <= nums[i] <= 3 * 10^4
//Each element in the array appears twice except for one element which appears only once.

// 풀이 1
func singleNumber(_ nums: [Int]) -> Int {
    var numCount = [Int: Int]()
    for n in nums {
        numCount[n, default: 0] += 1
    }
    return numCount.filter { $0.value == 1 }.keys.compactMap { Int($0) }.first!
}

// 풀이 2
func singleNumber(_ nums: [Int]) -> Int {
    nums.reduce(0, ^)
}

// 풀이 3
func SingleNumber(_ nums: [Int]) -> Int {
    let doubleSumNumsSet = 2 * Set(nums).reduce(0, +)
    let sumNums = nums.reduce(0, +)
    return doubleSumNumsSet - sumNums
}

// 풀이 4
func singleNumber(_ nums: [Int]) -> Int {
    var numsSet = Set<Int>()
    for n in nums {
        if numsSet.contains(n) {
            numsSet.remove(n)
        } else {
            numsSet.insert(n)
        }
    }
    
    return numsSet.first!
}

print(singleNumber([1])) // 1
print(singleNumber( [4,1,2,1,2])) // 4
print(singleNumber([2,2,1])) // 1
