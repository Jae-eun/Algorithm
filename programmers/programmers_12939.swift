//
//  programmers_12939.swift
//  algo
//
//  Created by 이재은 on 27/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12939 최댓값과 최솟값
// 문자열 s에는 공백으로 구분된 숫자들이 저장되어 있습니다. str에 나타나는 숫자 중 최소값과 최대값을 찾아 이를 (최소값) (최대값)형태의 문자열을 반환
// s에는 둘 이상의 정수가 공백으로 구분되어 있습니다.

func solution(_ s:String) -> String {
    let number = s.split(separator: " ").map{ Int($0)! }
    return String(number.min()!) + " " + String(number.max()!)
}
