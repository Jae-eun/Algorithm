//
//  backjoon_1377.swift
//  algo
//
//  Created by 이재은 on 28/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

//backjoon 버블 소트 1377
//
//영식이는 다음과 같은 버블 소트 프로그램을 C++로 작성했다.
//
//bool change = false;
//for (int i=1; i<=n+1; i++) {
//    change = false;
//    for (int j=1; j<=n-i; j++) {
//        if (a[j] > a[j+1]) {
//            change = true;
//            swap(a[j], a[j+1]);
//        }
//    }
//    if (change == false) {
//        cout << i << '\n';
//        break;
//    }
//}
//위 소스에서 n은 배열의 크기이고, a는 수가 들어있는 배열이다. 수는 배열의 1번방부터 채운다.
//
//위와 같은 소스를 실행시켰을 때, 어떤 값이 출력되는지 구하는 프로그램을 작성하시오.
//
//입력
//첫째 줄에 N이 주어진다. N은 500,000보다 작거나 같은 자연수이다. 둘째 줄부터 N개의 줄에 A[1]부터 A[N]까지 하나씩 주어진다. A에 들어있는 수는 1,000,000보다 작거나 같은 자연수 또는 0이다.
//
//출력
//정답을 출력한다.


let n = Int(readLine()!)!
var num = [Int: Int]()
var index = [Int]()

for i in 0..<n {
    num[i] = Int(readLine()!)!
}
var originalNum = num.sorted { a, b in
    return a.key < b.key
}
var sortNum = num.sorted { a, b in
    if a.value == b.value {
        return a.key < b.key
    } else {
        return a.value < b.value
    }
}
for i in 0..<n {
    index.append(sortNum[i].key - originalNum[i].key)
}
print(index.max()!+1)

//5
//10
//1
//5
//2
//3
//답
//3
