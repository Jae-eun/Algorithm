//
//  backjoon_1991.swift
//  algo
//
//  Created by 이재은 on 07/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// backjoon 1991 트리 순회

// 이진 트리를 입력받아 전위 순회(preorder traversal), 중위 순회(inorder traversal), 후위 순회(postorder traversal)한 결과를 출력하는 프로그램을 작성하시오.
//
// 예를 들어 위와 같은 이진 트리가 입력되면,
//
// 전위 순회한 결과 : ABDCEFG // (루트) (왼쪽 자식) (오른쪽 자식)
// 중위 순회한 결과 : DBAECFG // (왼쪽 자식) (루트) (오른쪽 자식)
// 후위 순회한 결과 : DBEGFCA // (왼쪽 자식) (오른쪽 자식) (루트)
// 가 된다.
//
// 입력
// 첫째 줄에는 이진 트리의 노드의 개수 N(1≤N≤26)이 주어진다. 둘째 줄부터 N개의 줄에 걸쳐 각 노드와 그의 왼쪽 자식 노드, 오른쪽 자식 노드가 주어진다. 노드의 이름은 A부터 차례대로 영문자 대문자로 매겨지며, 항상 A가 루트 노드가 된다. 자식 노드가 없는 경우에는 .으로 표현된다.
//
// 출력
// 첫째 줄에 전위 순회, 둘째 줄에 중위 순회, 셋째 줄에 후위 순회한 결과를 출력한다. 각 줄에 N개의 알파벳을 공백 없이 출력하면 된다.

let n = Int(readLine()!)!
var tree = [[Int]](repeating: [0,0], count: n)
let A = Int(("A".unicodeScalars.first?.value)!)

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let node = Int((input[0].unicodeScalars.first?.value)!) - A
    let left = input[1]
    let right = input[2]
    if left == "." {
        tree[node][0] = -1
    } else {
        tree[node][0] = Int((left.unicodeScalars.first?.value)!) - A
    }
    if right == "." {
        tree[node][1] = -1
    } else {
        tree[node][1] = Int((right.unicodeScalars.first?.value)!) - A
    }
}

func preorder(array: [[Int]], node: Int) {
    if node == -1 {
        return
    }
    print(UnicodeScalar(node+A)!, terminator: "")
    preorder(array: array, node: array[node][0])
    preorder(array: array, node: array[node][1])
}

func inorder(array: [[Int]], node: Int) {
    if node == -1 {
        return
    }
    inorder(array: array, node: array[node][0])
    print(UnicodeScalar(node+A)!, terminator: "")
    inorder(array: array, node: array[node][1])
}

func postorder(array: [[Int]], node: Int) {
    if node == -1 {
        return
    }
    postorder(array: array, node: array[node][0])
    postorder(array: array, node: array[node][1])
    print(UnicodeScalar(node+A)!, terminator: "")
}

preorder(array: tree, node: 0)
print()
inorder(array: tree, node: 0)
print()
postorder(array: tree, node: 0)

//7
//A B C
//B D .
//C E F
//E . .
//F . G
//D . .
//G . .


// 답 ABDCEFG
//DBAECFG
//DBEGFCA
