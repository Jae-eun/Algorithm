//
//  backjoon_1550.swift
//  algo
//
//  Created by 이재은 on 27/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 16진수 1550

//16진수 수를 입력받아서 10진수로 출력하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 16진수 수가 주어진다. 이 수의 최대 길이는 6글자이다. 16진수 수는 0~9와 A~F로 이루어져 있고, A~F는 10~15를 뜻한다. 또, 이 수는 음이 아닌 정수이다.
//
//출력
//첫째 줄에 입력으로 주어진 16진수 수를 10진수로 변환해 출력한다.

print(Int(readLine()!, radix: 16)!)

//A
//답
//10
