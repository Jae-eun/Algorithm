//
//  programmers_12901.swift
//  algo
//
//  Created by 이재은 on 27/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 12901 2016년
// 2016년 1월 1일은 금요일입니다. 두 수 a ,b를 입력받아 2016년 a월 b일이 무슨 요일인지 리턴
// 요일의 이름은 일요일부터 토요일까지 각각 SUN,MON,TUE,WED,THU,FRI,SAT
// 2016년은 윤년
// 2016년 a월 b일은 실제로 있는 날

func solution(_ a:Int, _ b:Int) -> String {
    let calendar = Calendar(identifier: .gregorian)
    let days = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
    
    let date: Date? = {
        let comps = DateComponents(calendar: calendar, year: 2016, month: a, day: b)
        return comps.date
    }()
    1
    let day = calendar.dateComponents([.weekday], from: date!)
    let result = days[day.weekday!-1]
    return result
}
