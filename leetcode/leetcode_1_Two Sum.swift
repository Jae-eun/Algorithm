//
//  leetcode_1_Two Sum.swift
//  fight
//
//  Created by 이재은 on 2020/11/25.
//  Copyright © 2020 jaeeun. All rights reserved.
//

import Foundation

//LeetCode 1. Two Sum

// 주어진 nums 배열에서 2개의 원소를 더해 target이 될 수 있는 수의 배열 인덱스 구하기

//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//You can return the answer in any order.
//
//
//
//Example 1:
//
//Input: nums = [2,7,11,15], target = 9
//Output: [0,1]
//Output: Because nums[0] + nums[1] == 9, we return [0, 1].
//Example 2:
//
//Input: nums = [3,2,4], target = 6
//Output: [1,2]
//Example 3:
//
//Input: nums = [3,3], target = 6
//Output: [0,1]
//
//
//Constraints:
//
//2 <= nums.length <= 10^3
//-10^9 <= nums[i] <= 10^9
//-10^9 <= target <= 10^9
//Only one valid answer exists.

// 풀이 1
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result = [Int]()

    for (index, n) in nums.enumerated() {
        for j in index + 1..<nums.count {
            if n + nums[j] == target {
                result.append(index)
                result.append(j)
                break
            }
        }
    }
    return result
}

// 풀이 2
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    let numsSet = Set(nums)
    
    for (index, num) in nums.enumerated() {
        let complement = target - num
        if numsSet.contains(complement) {
            let complementIndex = nums.lastIndex(of: complement)!
            if complementIndex != index {
                return [index, complementIndex]
            }
        }
    }
    return []
}

// 풀이 3
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict: [Int: Int] = [:]
    
    for (i, n) in nums.enumerated() {
        if let index = dict[target - n] {
            return [index, i]
        }
        dict[n] = i
    }
    return []
}

print(twoSum([2,7,11,15], 9)) //  [0, 1]
print(twoSum([3,2,4], 6)) // [1,2]
print(twoSum([3,3], 6)) //  [0, 1]
print(twoSum([-1,-2,-3,-4,-5], -8)) //  [2,4]
print(twoSum([0,4,3,0], 0)) //  [0,3]
