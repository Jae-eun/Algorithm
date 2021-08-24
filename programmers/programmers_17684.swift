//
//  programmers_17684.swift
//  algo
//
//  Created by 이재은 on 2021/08/24.
//  Copyright © 2021 이재은. All rights reserved.
//

import Foundation

//programmers 17684 [3차] 압축
//
//신입사원 어피치는 카카오톡으로 전송되는 메시지를 압축하여 전송 효율을 높이는 업무를 맡게 되었다. 메시지를 압축하더라도 전달되는 정보가 바뀌어서는 안 되므로, 압축 전의 정보를 완벽하게 복원 가능한 무손실 압축 알고리즘을 구현하기로 했다.
//
//어피치는 여러 압축 알고리즘 중에서 성능이 좋고 구현이 간단한 LZW(Lempel–Ziv–Welch) 압축을 구현하기로 했다. LZW 압축은 1983년 발표된 알고리즘으로, 이미지 파일 포맷인 GIF 등 다양한 응용에서 사용되었다.
//
//LZW 압축은 다음 과정을 거친다.
//
//길이가 1인 모든 단어를 포함하도록 사전을 초기화한다.
//사전에서 현재 입력과 일치하는 가장 긴 문자열 w를 찾는다.
//w에 해당하는 사전의 색인 번호를 출력하고, 입력에서 w를 제거한다.
//입력에서 처리되지 않은 다음 글자가 남아있다면(c), w+c에 해당하는 단어를 사전에 등록한다.
//단계 2로 돌아간다.
//압축 알고리즘이 영문 대문자만 처리한다고 할 때, 사전은 다음과 같이 초기화된다. 사전의 색인 번호는 정수값으로 주어지며, 1부터 시작한다고 하자.
//
//색인 번호    1    2    3    ...    24    25    26
//단어    A    B    C    ...    X    Y    Z
//예를 들어 입력으로 KAKAO가 들어온다고 하자.
//
//현재 사전에는 KAKAO의 첫 글자 K는 등록되어 있으나, 두 번째 글자까지인 KA는 없으므로, 첫 글자 K에 해당하는 색인 번호 11을 출력하고, 다음 글자인 A를 포함한 KA를 사전에 27 번째로 등록한다.
//두 번째 글자 A는 사전에 있으나, 세 번째 글자까지인 AK는 사전에 없으므로, A의 색인 번호 1을 출력하고, AK를 사전에 28 번째로 등록한다.
//세 번째 글자에서 시작하는 KA가 사전에 있으므로, KA에 해당하는 색인 번호 27을 출력하고, 다음 글자 O를 포함한 KAO를 29 번째로 등록한다.
//마지막으로 처리되지 않은 글자 O에 해당하는 색인 번호 15를 출력한다.
//현재 입력(w)    다음 글자(c)    출력    사전 추가(w+c)
//K    A    11    27: KA
//A    K    1    28: AK
//KA    O    27    29: KAO
//O        15
//이 과정을 거쳐 다섯 글자의 문장 KAKAO가 4개의 색인 번호 [11, 1, 27, 15]로 압축된다.
//
//입력으로 TOBEORNOTTOBEORTOBEORNOT가 들어오면 다음과 같이 압축이 진행된다.
//
//현재 입력(w)    다음 글자(c)    출력    사전 추가(w+c)
//T    O    20    27: TO
//O    B    15    28: OB
//B    E    2    29: BE
//E    O    5    30: EO
//O    R    15    31: OR
//R    N    18    32: RN
//N    O    14    33: NO
//O    T    15    34: OT
//T    T    20    35: TT
//TO    B    27    36: TOB
//BE    O    29    37: BEO
//OR    T    31    38: ORT
//TOB    E    36    39: TOBE
//EO    R    30    40: EOR
//RN    O    32    41: RNO
//OT        34
//입력 형식
//입력으로 영문 대문자로만 이뤄진 문자열 msg가 주어진다. msg의 길이는 1 글자 이상, 1000 글자 이하이다.
//
//출력 형식
//주어진 문자열을 압축한 후의 사전 색인 번호를 배열로 출력하라.
//
//입출력 예제
//msg    answer
//KAKAO    [11, 1, 27, 15]
//TOBEORNOTTOBEORTOBEORNOT    [20, 15, 2, 5, 15, 18, 14, 15, 20, 27, 29, 31, 36, 30, 32, 34]
//ABABABABABABABAB    [1, 2, 27, 29, 28, 31, 30]

extension String {
    subscript(_ idx: Int) -> Character {
        let indice = self.index(self.startIndex, offsetBy: idx)
        return self[indice]
    }

    subscript (bounds: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start..<end])
    }
}

func checkInput(_ msg: String, _ length: Int, _ dic: [String: Int]) -> String {
    var length = length
    if msg.count < length {
        length = msg.count
    }
    while length > 1 {
        let text = msg[0..<length]
        if dic[text] != nil {
            return text
        }
        length -= 1
    }
    return String(msg[0])
}

func solution(_ msg: String) -> [Int] {
    var dic = [String: Int]()
    for i in 1...26 {
        dic[String(UnicodeScalar(i + 64)!)] = i
    }
    var message = msg
    var result = [Int]()
    var next = ""
    var wordLength = 1
    var msgIndex = 0

    while msgIndex < msg.count {
        let text = checkInput(message, wordLength, dic)
        if msgIndex + text.count < msg.count {
            next = String(msg[msgIndex + text.count])
        }
        if let index = dic[text] {
            result.append(index)
            for _ in 0..<text.count {
                message.removeFirst()
            }
            msgIndex += text.count
        }
        let newText = text + next
        if dic[newText] == nil {
            wordLength = max(wordLength, newText.count)
            dic[newText] = dic.count + 1
        }
    }
    return result
}

print(solution("KAKAO")) // [11, 1, 27, 15]
print(solution("TOBEORNOTTOBEORTOBEORNOT")) // [20, 15, 2, 5, 15, 18, 14, 15, 20, 27, 29, 31, 36, 30, 32, 34]
print(solution("ABABABABABABABAB")) // [1, 2, 27, 29, 28, 31, 30]
