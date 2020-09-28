//
//  codility_Distinct_6-1.swift
//  algo
//
//  Created by 이재은 on 2020/09/29.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

// codility Distinct Lesson 6 - 1

// 배열에 들어있는 원소의 개수

//Write a function
//
//public func solution(_ A : inout [Int]) -> Int
//
//that, given an array A consisting of N integers, returns the number of distinct values in array A.
//
//For example, given array A consisting of six elements such that:
//
// A[0] = 2    A[1] = 1    A[2] = 1
// A[3] = 2    A[4] = 3    A[5] = 1
//the function should return 3, because there are 3 distinct values appearing in array A, namely 1, 2 and 3.
//
//Write an efficient algorithm for the following assumptions:
//
//N is an integer within the range [0..100,000];
//each element of array A is an integer within the range [−1,000,000..1,000,000].
//Copyright 2009–2020 by Codility Limited. All Rights Reserved. Unauthorized copying, publication or disclosure prohibited.
//

public func solution(_ A: [Int]) -> Int {
    return Set(A).count
}

print(solution([2, 1, 1, 2, 3, 1])) // 3

