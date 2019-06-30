//
//  backjoon_2884.swift
//  algo
//
//  Created by 이재은 on 30/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 2884 알람 시계
// 상근이는 매일 아침 알람을 듣고 일어난다. 알람을 듣고 바로 일어나면 다행이겠지만, 항상 조금만 더 자려는 마음 때문에 매일 학교를 지각하고 있다.
// 상근이는 모든 방법을 동원해보았지만, 조금만 더 자려는 마음은 그 어떤 것도 없앨 수가 없었다.
// 이런 상근이를 불쌍하게 보던, 창영이는 자신이 사용하는 방법을 추천해 주었다.
// 바로 "45분 일찍 알람 맞추기"이다.
// 이 방법은 단순하다. 원래 맞춰져있는 알람을 45분 앞서는 시간으로 바꾸는 것이다. 어차피 알람 소리를 들으면, 알람을 끄고 조금 더 잘 것이기 때문이다. 이 방법을 사용하면, 매일 아침 더 잤다는 기분을 느낄 수 있고, 학교도 지각하지 않게 된다.
//
// 현재 상근이가 맞춰논 알람 시각이 주어졌을 때, 창영이의 방법을 사용한다면, 이를 언제로 고쳐야 하는지 구하는 프로그램을 작성하시오.
// 첫째 줄에 두 정수 H와 M이 주어진다. (0 ≤ H ≤ 23, 0 ≤ M ≤ 59) 그리고 이것은 현재 상근이가 맞춰놓은 알람 시간 H시 M분을 의미한다.
// 입력 시간은 24시간 표현을 사용한다. 24시간 표현에서 하루의 시작은 0:0(자정)이고, 끝은 23:59(다음날 자정 1분 전)이다. 시간을 나타낼 때, 불필요한 0은 사용하지 않는다.


// 풀이 1 (런타임 에러(?))
let input = readLine()!.split(separator: " ").compactMap{ Int($0)! }
let cal = Calendar.current
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "HH mm"
let currentAlarm = cal.date(bySettingHour: input[0], minute: input[1], second: 0, of: Date())
var changeAlarm = dateFormatter.string(from: currentAlarm! - 45 * 60).split(separator: " ").compactMap{ Int($0) }

print(changeAlarm[0], changeAlarm[1])

// 풀이 2
let input = readLine()!.split(separator: " ").compactMap{ Int($0) }
var hour = input[0]
var minute = input[1] - 45

if minute <= 0 {
    hour -= 1
    minute += 60
}
if hour <= 0 {
    hour = 23
}
print(hour, minute)
