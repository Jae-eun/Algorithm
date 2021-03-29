//
//  backjoon_3029.swift
//  algo
//
//  Created by 이재은 on 2021/03/29.
//  Copyright © 2021 이재은. All rights reserved.
//

//backjoon 3029 경고

//문제
//창영마을에서 정인이의 반란은 실패로 끝났다. (3028번)
//
//테러리스트로 변신한 정인이는 창영마을에 경고를 하려고 한다.
//
//사실 정인이는 창영마을에서 제일 착한사람이다. 따라서, 사람들을 다치지 않게하려고 한다.
//
//유튜브에서 폭발에 대한 동영상을 찾아보다가, 그는 나트륨을 물에 던지면 폭발한다는 사실을 알게 되었다.
//정인이는 창영마을의 중심을 지나는 "강산강" 근처에 숨어있다가, 나트륨을 위의 동영상처럼 물에 던질 것이다.
//
//현재 시간과 정인이가 나트륨을 던질 시간이 주어졌을 때, 정인이가 얼마나 숨어있어야 하는지 구하는 프로그램을 작성하시오. (정인이는 적어도 1초를 기다리며, 많아야 24시간을 기다린다.)
//
//입력
//첫째 줄에 현재 시간이 hh:mm:ss 형식으로 주어진다. (시, 분, 초) hh는 0보다 크거나 같고, 23보다 작거나 같으며, 분과 초는 0보다 크거나 같고, 59보다 작거나 같다.
//
//둘째 줄에는 나트륨을 던질 시간이 위와 같은 형식으로 주어진다.
//
//출력
//첫째 줄에 정인이가 기다려야 하는 시간을 입력과 같은 형식으로 출력한다.

let current = readLine()!.split(separator: ":").compactMap { Int($0) }
var targetTime = readLine()!.split(separator: ":").compactMap { Int($0) }
var hour = 0, minute = 0, seconds = 0

if targetTime[2] >= current[2] {
    seconds = targetTime[2] - current[2]
} else {
    seconds = 60 + targetTime[2] - current[2]
    targetTime[1] -= 1
}
if targetTime[1] >= current[1] {
    minute = targetTime[1] - current[1]
} else {
    minute = 60 + targetTime[1] - current[1]
    targetTime[0] -= 1
}
if targetTime[0] >= current[0] {
    hour = targetTime[0] - current[0]
} else {
    hour = 24 + targetTime[0] - current[0]
}

if hour == 0, minute == 0, seconds == 0 {
    print("24:00:00")
} else {
    print(String(hour).count == 1 ? "0\(hour)" : hour, terminator: ":")
    print(String(minute).count == 1 ? "0\(minute)" : minute, terminator: ":")
    print(String(seconds).count == 1 ? "0\(seconds)" : seconds)
}

//20:00:00
//04:00:00
//답
//08:00:00
