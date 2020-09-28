//
//  codility_OddOccurrencesInArray_2-1.swift
//  algo
//
//  Created by 이재은 on 09/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// codility OddOccurrencesInArray Lesson 2 Arrays - 1

// 주어진 배열에서 원소끼리 짝이 되지 않는 숫자 출력

//A non-empty array A consisting of N integers is given. The array contains an odd number of elements, and each element of the array can be paired with another element that has the same value, except for one element that is left unpaired.
//
//For example, in array A such that:
//
//  A[0] = 9  A[1] = 3  A[2] = 9
//  A[3] = 3  A[4] = 9  A[5] = 7
//  A[6] = 9
//the elements at indexes 0 and 2 have value 9,
//the elements at indexes 1 and 3 have value 3,
//the elements at indexes 4 and 6 have value 9,
//the element at index 5 has value 7 and is unpaired.
//Write a function:
//
//class Solution { public int solution(int[] A); }
//
//that, given an array A consisting of N integers fulfilling the above conditions, returns the value of the unpaired element.
//
//For example, given array A such that:
//
//  A[0] = 9  A[1] = 3  A[2] = 9
//  A[3] = 3  A[4] = 9  A[5] = 7
//  A[6] = 9
//the function should return 7, as explained in the example above.
//
//Write an efficient algorithm for the following assumptions:
//
//N is an odd integer within the range [1..1,000,000];
//each element of array A is an integer within the range [1..1,000,000,000];
//all but one of the values in A occur an even number of times.

//Copyright 2009–2020 by Codility Limited. All Rights Reserved. Unauthorized copying, publication or disclosure prohibited.


public func solution(_ A: [Int]) -> Int {
    var nCount = [Int: Int]()

    for n in A {
        if nCount[n] != nil {
            nCount[n]! += 1
        } else {
            nCount[n] = 1
        }
    }
    let odd = nCount.filter { $0.value % 2 == 1 }
    return odd.keys.first ?? 0
}

print(solution([9,3,9,3,9,7,9])) // 7
print(solution([1,2,1])) // 2
