//
//  backjoon_14918.swift
//  algo
//
//  Created by 이재은 on 2020/10/14.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon 더하기 14918

//문제
//두 개의 정수 입력 a, b를 받아서 a+b를 출력하시오.
//
//C 입출력 예제
//
//#include <stdio.h>
//…
//scanf(“%d%d”, &a, &b);
//printf(“%d\n”, a+b);
//C++ 입출력 예제
//
//#include <iostream>
//…
//cin >> a >> b;
//cout << a+b << endl;
//JAVA 입출력 예제
//
//import java.util.Scanner;
//Scanner sc = new Scanner(System.in);
//a = sc.nextInt();
//b = sc.nextInt();
//System.out.println((a+b));
//입력
//a b; a와 b는 -100,000과 100,000 사이의 정수이다.
//
//출력
//a+b

print(readLine()!.split(separator: " ").map { Int($0)! }.reduce(0, +))

//1 2
//답
//3
//
//4 5
//답
//9
