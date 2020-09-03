//
//  backjoon_13420.swift
//  algo
//
//  Created by 이재은 on 2020/09/03.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon 사칙연산 13420

//문제
//사칙연산은 덧셈, 뺄셈, 곱셈, 나눗셈으로 이루어져 있으며, 컴퓨터 프로그램에서 이를 표현하는 기호는 +, -, *, / 와 같다. 아래는 컴퓨터 프로그램에서 표현한 사칙 연산의 예제이다.
//
//3 * 2 = 6
//
//문제와 답이 주어졌을 때, 이를 계산하여 올바른 수식인지 계산하는 프로그램을 만들려고 한다. 만약 주어진 데이터가 3 * 2 = 6 이라면 정답으로, 3 * 2 = 7 이면 오답으로 채점을 하면 된다. 문제와 답이 주어졌을 때, 이를 채점하는 프로그램을 작성하시오.
//
//입력
//입력 데이터는 표준 입력을 사용한다. 입력은 T개의 테스트 데이터로 구성된다. 입력의 첫 번째 줄에 테스트 케이스의 개수를 나타내는 자연수 T가 주어진다. 각 테스트 케이스의 첫 번째 줄에는 수식이 주어진다. 수식은 문자와 기호가 공백으로 구분되어 주어지고, 사칙연산 기호는 1개만 사용된다. 나눗셈의 경우 항상 나누어떨어지는 경우로만 주어진다.
//
//출력
//출력은 표준 출력을 사용한다. 입력받은 데이터에 대해, 각 테스트 케이스의 답을 순서대로 1줄에 1개씩 출력한다. 주어진 수식이 정답일 경우 “correct”를, 오답일 경우 “wrong answer”를 출력한다. 문제의 정답이 32비트 정수가 넘어갈 수 있다. 모든 범위가 부호가 있는 64비트 정수 이내이다.

let T = Int(readLine()!)!
for _ in 0..<T {
    let input = readLine()!.split(separator: " ")
    let num1 = Int(input[0])!
    let num2 = Int(input[2])!
    var result = 0
    switch input[1] {
    case "+":
        result = num1 + num2
    case "-":
        result = num1 - num2
    case "*":
        result = num1 * num2
    case "/":
        result = num1 / num2
    default:
        break
    }
    print(result == Int(input[4])! ? "correct" : "wrong answer")
}

//4
//3 * 2 = 6
//11 + 11 = 11
//7 - 9 = -2
//3 * 0 = 0
//답
//correct
//wrong answer
//correct
//correct
