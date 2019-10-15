//
//  backjoon_10988.swift
//  algo
//
//  Created by 이재은 on 15/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 팰린드롬인지 확인하기 10988

//알파벳 소문자로만 이루어진 단어가 주어진다. 이때, 이 단어가 팰린드롬인지 아닌지 확인하는 프로그램을 작성하시오.
//
//팰린드롬이란 앞으로 읽을 때와 거꾸로 읽을 때 똑같은 단어를 말한다.
//
//level, noon은 팰린드롬이고, baekjoon, online, judge는 팰린드롬이 아니다.
//
//입력
//첫째 줄에 단어가 주어진다. 단어의 길이는 1보다 크거나 같고, 100보다 작거나 같으며, 알파벳 소문자로만 이루어져 있다.
//
//출력
//첫째 줄에 팰린드롬이면 1, 아니면 0을 출력한다.

// 풀이 1
let input = readLine()!
let palindrome = String(input.reversed())

input == palindrome ? print(1) : print(0)


// 풀이 2
let input = Array(readLine()!)
var palindrome = true

for i in 0..<input.count {
    if input[i] != input[input.count - 1 - i] {
        palindrome = false
        break
    }
}
palindrome ? print(1) : print(0)

//level
//답
//1
//
//baekjoon
//답
//0
