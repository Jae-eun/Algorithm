//
//  backjoon_15680.swift
//  algo
//
//  Created by 이재은 on 06/10/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

//backjoon 연세대학교 15680
//
//연세대학교의 영문명은 YONSEI, 슬로건은 Leading the Way to the Future이다.
//
//이를 출력하는 프로그램을 작성해보도록 하자.
//
//입력
//첫째 줄에 N이 주어진다. (N = 0 또는 1)
//
//출력
//N = 0일 경우: 연세대학교의 영문명을 출력한다.
//N = 1일 경우: 연세대학교의 슬로건을 출력한다.
//대소문자 구별에 주의하도록 하자.

if readLine() == "0" {
    print("YONSEI")
} else {
    print("Leading the Way to the Future")
}

//0
//답
//YONSEI
