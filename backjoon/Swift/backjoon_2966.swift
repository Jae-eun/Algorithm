//
//  backjoon_2966.swift
//  algo
//
//  Created by 이재은 on 2021/02/01.
//  Copyright © 2021 이재은. All rights reserved.
//

//backjoon 찍기 2966
//
//문제
//상근이, 창영이, 현진이는 역사와 전통을 자랑하는 Sogang ACM-ICPC Team에 가입하려고 한다. 하지만, 가입하려고 하는 모든 지원자는 C언어 필기시험을 통과해야 한다. 이들은 C언어를 할 줄 모른다. 따라서, 필기시험을 모두 찍으려고 한다.
//
//상근이는 A, B, C, A, B, C, A, B, C, A, B, C, ...와 같이 찍어야 통과할 수 있다고 생각한다.
//
//하지만, 창영이는 B, A, B, C, B, A, B, C, B, A, B, C, ...와 같이 찍는 방법이 만점의 지름길이라고 생각한다.
//
//마지막으로, 현진이는 상근이와 창영이를 비웃으면서 C, C, A, A, B, B, C, C, A, A, B, B, ...와 같이 찍어야 통과한다고 말했다.
//
//필기시험의 정답이 주어졌을 때, 상근이, 창영이, 현진이 중에서 가장 많은 문제를 맞힌 사람이 누구인지 구하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 필기시험의 문제의 수 N이 주어진다. (1 ≤ N ≤ 100)
//
//둘째 줄에는 시험의 정답이 주어진다.
//
//출력
//첫째 줄에 가장 많은 문제를 맞춘 사람이 몇 문제를 맞혔는지 출력한다.
//
//다음 줄에는 가장 많은 문제를 맞힌 사람의 아이디를 출력한다. 상근이의 아이디는 Adrian, 창영이의 아이디는 Bruno, 현진이의 아이디는 Goran이다. 아이디 여러 개를 출력하는 경우에는 상근이, 창영이, 현진이 순서로 출력하고, 한 줄에 하나씩 출력한다.

enum Applicant: String {
    case sang
    case chang
    case hyun

    var selection: [Character] {
        switch self {
        case .sang:
            return ["A", "B", "C"]
        case .chang:
            return ["B", "A", "B", "C"]
        case .hyun:
            return ["C", "C", "A", "A", "B", "B"]
        }
    }

    var ID: String {
        switch self {
        case .sang:
            return "Adrian"
        case .chang:
            return "Bruno"
        case .hyun:
            return "Goran"
        }
    }
}

let N = Int(readLine()!)!
let answers = readLine()!

var scores = [Applicant.sang.ID: 0, Applicant.chang.ID: 0, Applicant.hyun.ID: 0]
for (index, answer) in answers.enumerated() {
    if answer == Applicant.sang.selection[index % Applicant.sang.selection.count] {
        scores[Applicant.sang.ID]! += 1
    }
    if answer == Applicant.chang.selection[index % Applicant.chang.selection.count] {
        scores[Applicant.chang.ID]! += 1
    }
    if answer == Applicant.hyun.selection[index % Applicant.hyun.selection.count] {
        scores[Applicant.hyun.ID]! += 1
    }
}

let sortedScores = scores.sorted(by: {
    if $0.value >= $1.value && $0.key < $1.key {
        return true
    } else {
        return false
    }
})

if let highScore = sortedScores.max(by: { $0.value < $1.value })?.value {
    print(highScore)
    for applicantInfo in sortedScores {
        if highScore == applicantInfo.value {
            print(applicantInfo.key)
        }
    }
}

//5
//BAACC
//답
//3
//Bruno
//
//9
//AAAABBBBB
//답
//4
//Adrian
//Bruno
//Goran
