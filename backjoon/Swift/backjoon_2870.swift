//
//  backjoon_2870.swift
//  algo
//
//  Created by 이재은 on 21/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

//backjoon 수학숙제 2870
//
//상근이는 수학시간에 딴 짓을 하다가 선생님께 걸렸다. 선생님은 상근이에게 이번 주말동안 반성하라며 엄청난 숙제를 내주었다.
//
//선생님이 상근이에게 준 종이에는 숫자와 알파벳 소문자로 되어있는 글자가 N줄있다. 상근이는 여기서 숫자를 모두 찾은 뒤, 이 숫자를 비내림차순으로 정리해야한다. 숫자의 앞에 0이 있는 경우에는 정리하면서 생략할 수 있다.
//
//글자를 살펴보다가 숫자가 나오는 경우에는, 가능한 가장 큰 숫자를 찾아야 한다. 즉, 모든 숫자의 앞과 뒤에 문자가 있거나, 줄의 시작 또는 끝이어야 한다.
//
//예를 들어, 01a2b3456cde478에서 숫자를 찾으면 1, 2, 3456, 478이다.
//
//선생님이 준 종이의 내용이 주어졌을 때, 상근이의 숙제를 대신하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 종이의 줄의 개수 N이 주어진다. (1 ≤ N ≤ 100)
//
//다음 N개의 줄에는 각 줄의 내용이 주어진다. 각 줄은 최대 100글자이고, 항상 알파벳 소문자와 숫자로만 이루어져 있다.
//
//출력
//종이에서 찾은 숫자의 개수를 M이라고 하면, 출력은 M줄로 이루어져야 한다. 각 줄에는 종이에서 찾은 숫자를 하나씩 출력해야 한다. 이때, 비내림차순으로 출력해야 한다. 비내림차순은 내림차순의 반대인 경우인데, 다음 수가 앞의 수보다 크거나 같은 경우를 말한다.

let n = Int(readLine()!)!
var text = ""
var result = [Int]()
for _ in 0..<n {
    let input = readLine()!
    text = ""
    for i in input {
        if i.isNumber {
            text += String(i)
        } else if i.isLetter && text != "" {
            result.append(Int(text)!)
            text = ""
        }
    }
    if text != "" {
        result.append(Int(text)!)
    }
}
result.sorted().forEach {
    print($0)
}

//4
//43silos0
//zita002
//le2sim
//231233
//
//답
//0
//2
//2
//43
//231233

//extension String{
//    func getArrayAfterRegex(regex: String) -> [String] {
//
//        do {
//            let regex = try NSRegularExpression(pattern: regex)
//            let results = regex.matches(in: self,
//                                        range: NSRange(self.startIndex...,
//                                                       in: self))
//            return results.map {
//                String(self[Range($0.range, in: self)!])
//            }
//        } catch let error {
//            print("invalid regex: \(error.localizedDescription)")
//            return []
//        }
//    }
//}
//
//let n = Int(readLine()!)!
//var number = [Float32]()
//var result = [String]()
//for _ in 0..<n {
//    let input = readLine()!
//    let texts = input.getArrayAfterRegex(regex: "[0-9]+")
//    print(texts)
//    texts.forEach {
//        number.append(Float32($0)!)
//    }
//}
//number.sorted().forEach {
//    result.append(String($0))
//}
//result.forEach {
//    print($0)
//}
//9223372036854775807

//4
//43silos000002w000000000000000000000000000000000000000
//zita0020
//le2sim
//0000231233a0234zi03596823948676890000453456737
