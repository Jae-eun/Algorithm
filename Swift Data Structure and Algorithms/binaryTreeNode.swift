//
//  binaryTreeNode.swift
//  algo
//
//  Created by 이재은 on 06/09/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

public class BinaryTreeNode<T: Comparable> {
    // 키 값과 자식 노드를 위한 변수
    public var value: T
    public var leftChild: BinaryTreeNode?
    public var rightChild: BinaryTreeNode?
    public weak var parent: BinaryTreeNode?
    
    // 초기화
    public convenience init(value: T) {
        self.init(value: value, left: nil, right: nil, parent: nil)
    }
    
    public init(value: T, left: BinaryTreeNode?,
                right: BinaryTreeNode?,
                parent: BinaryTreeNode?) {
        self.value = value
        self.leftChild = left
        self.rightChild = right
        self.parent = parent
    }
    
    public func insertNodeFromRoot(value: T) {
        // 루트 노드에서부터 InsertNode 작업이 실행되야 함
        if let _ = self.parent {
            // 부모 노드가 있다면 루트 노드가 아님
            print("You can only add new nodes from root node of the tree")
            return
        }
        self.addNode(value: value)
    }
    
    private func addNode(value: T) {
        if value < self.value {
            // value가 루트 키 값보다 작은 경우 좌측 서브트리에 삽입
            // 노드가 존재하는 경우 좌측 서브트리에 삽입
            // 노드가 없는 경우 새로운 노드를 만들어 좌측 자식 노드로 삽입
            if let leftChild = leftChild {
                leftChild.addNode(value: value)
            } else {
                let newNode = BinaryTreeNode(value: value)
                newNode.parent = self
                leftChild = newNode
            }
        } else {
            // value가 루트 키 값보다 큰 경우 우측 서브트리에 삽입
            // 노드가 존재하는 경우 우측 서브트리에 삽입
            // 노드가 없는 경우 새로운 노드를 만들어서 우측 자식 노드로 삽입
            if let rightChild = rightChild {
                rightChild.addNode(value: value)
            } else {
                let newNode = BinaryTreeNode(value: value)
                newNode.parent = self
                rightChild = newNode
            }
        }
    }
    
    public class func traverseInOder(node: BinaryTreeNode?) {
        // nil인 잎에 도달하면 재귀 함수 호출이 중단됨
        guard let node = node else {
            return
        }
        
        // leftChild에서 재귀적으로 메소드를 호출하고
        // rightChild 값을 출력한 뒤, rightChild로 이동
        BinaryTreeNode.traverseInOder(node: node.leftChild)
        print(node.value)
        BinaryTreeNode.traverseInOder(node: node.rightChild)
    }
    
    public class func traversePreOrder(node: BinaryTreeNode?) {
        // nil인 잎에 도달하면 재귀 함수 호출이 중단됨
        guard let node = node else {
            return
        }
        
        // 메소드를 재귀적으로 호출해서 루트 노드 값을 출력한 뒤
        // leftChild와 rightChild 순으로 순회
        print(node.value)
        BinaryTreeNode.traversePreOrder(node: node.leftChild)
        BinaryTreeNode.traversePreOrder(node: node.rightChild)
    }
    
    public class func traversePostOrder(node: BinaryTreeNode?) {
        // nil인 잎에 도달하면 재귀 함수 호출이 중단됨
        guard let node = node else {
            return
        }
        
        // 재귀적으로 메소드를 호출하면서 leftChild에서 시작해서
        // rightChild로 이동한 뒤, 루트 노드에서 순회를 종료함
        BinaryTreeNode.traversePostOrder(node: node.leftChild)
        BinaryTreeNode.traversePostOrder(node: node.rightChild)
        print(node.value)
    }
    
    public func search(value: T) -> BinaryTreeNode? {
        // 키 값을 찾은 경우
        if value == self.value {
            return self
        }
        
        // 해당 키 값이 현재 노드의 키 값보다 작은 경우
        // 좌측 서브트리에서 재귀적으로 검색을 시작
        // 그렇지 않은 경우 우측 서브트리에서 검색 시작
        if value < self.value {
            guard let left = leftChild else {
                return nil
            }
            return left.search(value: value)
        } else {
            guard let right = rightChild else {
                return nil
            }
        }
        return right.search(value: value)
    }
    
    public func delete() {
        if let left = leftChild {
            if let _ = rightChild {
                // 대상 노드가 좌측 및 우측, 두 개의 자식 요소를 모두 지닌 경우
                // 후손 교환 작업을 수행
                self.exchangeWithSuccessor()
            } else {
                // 대상 노드가 좌측 자식 요소를 지닌 경우
                // 대상 노드의 self.parent와 self.child를 바로 연결함
                // 이를 위해서는 먼저 대상 노드가 부모 노드의 우측 서브
                // 트리에 속한 자식의 좌측 노드인지 알아야 함
                self.connectParentTo(child: left)
            }
        } else if let right = rightChild {
            // 대상 노드가 우측 자식 요소를 지닌 경우
            // 대상 노드의 self.parent와 self.child를 바로 연결함
            // 이를 위해서는 먼저 대상 노드가 부모 노드의 우측 서브
            // 트리에 속한 자식의 좌측 노드인지 알아야 함
            self.connectParentTo(child: right)
        } else {
            self.connectParentTo(child: nil)
        }
        
        // 노드 참조값을 삭제
        self.parent = nil
        self.leftChild = nil
        self.rightChild = nil
    }
    
    // 삭제 대상 노드의 후손을 위해 노드 교환을 수행
    private func exchangeWithSuccessor() {
        guard let right = self.rightChild, let left = self.leftChild else {
            return
        }
        let successor = right.minimum()
        succesor.delete()
        
        succesor.leftChild = left
        left.parent = succesor
        
        if right !== succesor {
            succesor.rightChild = right
            right.parent = succesor
        } else {
            succesor.rightChild = nil
        }
        self.connectParentTo(child: succesor)
    }
    
    private func connectParentTo(child: BinaryTreeNode?) {
        guard let parent = self.parent else {
            child?.parent = self.parent
            return
        }
        if parent.leftChild == self {
            parent.leftChild = child
            child?.parent = self.parent
            return
        }
        if parent.leftChild === self {
            parent.leftChild = child
            child?.parent = parent
        } else if parent.rightChild === self {
            parent.rightChild = child
            child?.parent = parent
        }
    }
    
    // 트리 내 최솟값 확인
    public func minimumValue() -> T {
        if let left = leftChild {
            return left.minimumValue()
        } else {
            return value
        }
    }
    
    // 트리 내 최댓값 확인
    public func maximumValue() -> T {
        if let right = rightChild {
            return right.minimumValue()
        } else {
            return value
        }
    }
    
    // 트리 내 최소 노드 반환
    public func minimum() -> BinaryTreeNode {
        if let left = leftChild {
            return left.minimum()
        } else {
            return self
        }
    }
    
    // 트리 내 최대 노드 반환
    public func maximum() -> BinaryTreeNode {
        if let right = rightChild {
            return right.maximum()
        } else {
            return self
        }
    }
    
    // 트리의 높이
    public func height() -> Int {
        if leftChild == nil && rightChild == nil {
            return 0
        }
        return 1 + max(leftChild?.height() ?? 0, rightChild?.height() ?? 0)
    }
    
    // 트리의 깊이
    public func depth() -> Int {
        guard var node = parent else {
            return
        }
        var depth = 1
        while let parent = node.parent {
            depth = depth + 1
            node = parent
        }
        return depth
    }
}
