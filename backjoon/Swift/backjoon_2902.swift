//
//  backjoon_2902.swift
//  algo
//
//  Created by 이재은 on 07/07/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 2902 KMP는 왜 KMP일까?
// KMP 알고리즘이 KMP인 이유는 이를 만든 사람의 성이 Knuth, Morris, Prett이기 때문이다. 이렇게 알고리즘에는 발견한 사람의 성을 따서 이름을 붙이는 경우가 많다.
//
// 사람들은 이렇게 사람 성이 들어간 알고리즘을 두 가지 형태로 부른다.
//
// 첫 번째는 성을 모두 쓰고, 이를 하이픈(-)으로 이어 붙인 것이다. 예를 들면, Knuth-Morris-Pratt이다. 이것을 긴 형태라고 부른다.
// 두 번째로 짧은 형태는 만든 사람의 성의 첫 글자만 따서 부르는 것이다. 예를 들면, KMP이다.
// 동혁이는 매일매일 자신이 한 일을 모두 메모장에 적어놓는다. 잠을 자기 전에, 오늘 하루 무엇을 했는지 되새겨 보는 것으로 하루를 마감한다.
// 하루는 이 메모를 보던 중, 지금까지 긴 형태와 짧은 형태를 섞어서 적어 놓은 것을 발견했다.
// 이렇게 긴 형태로 하루 일을 기록하다가는 메모장 가격이 부담되어 파산될 것이 뻔하기 때문에, 앞으로는 짧은 형태로 기록하려고 한다.
//
// 긴 형태의 알고리즘 이름이 주어졌을 때, 이를 짧은 형태로 바꾸어 출력
//
// 입력은 한 줄로 이루어져 있고, 최대 100글자의 영어 알파벳 대문자, 소문자, 그리고 하이픈 ('-', 아스키코드 45)로만 이루어져 있다. 첫 번째 글자는 항상 대문자이다. 그리고, 하이픈 뒤에는 반드시 대문자이다. 그 외의 모든 문자는 모두 소문자이다.

// 풀이 1
let input = readLine()!.split(separator: "-")
var changedText = ""
for char in input {
    changedText.append(char.first!)
}
print(changedText)


// 풀이 2
let text = readLine()!.split(separator: "-").reduce(""){$0 + String($1[$1.startIndex])}

print(text)
