//
//  53. Maximum Subarray LeetCode.swift
//  algo
//
//  Created by 이재은 on 25/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

//53. Maximum Subarray LeetCode

// 주어진 배열의 연속된 부분 배열의 원소들을 더할 때 가장 큰 값 구하기

//Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

func maxSubArray(_ nums: [Int]) -> Int {
    var sum = [Int](repeating: 0, count: nums.count)
    sum[0] = nums[0]
    for i in 1..<nums.count {
        sum[i] = max(sum[i-1] + nums[i], nums[i])
    }
    return sum.max()!
}

print(maxSubArray([-2,1,-3,4,-1,2,1,-5,4])) // 6
print(maxSubArray([1])) // 1

//Input: [-2,1,-3,4,-1,2,1,-5,4],
//Output: 6
//Explanation: [4,-1,2,1] has the largest sum = 6.
