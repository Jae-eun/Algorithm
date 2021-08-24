# 트라이 트리 (`Trie tree`)

> 공통 분모를 지닌 일련의 데이터 노드를 저장
>
> * 순위 데이터 구조 : 모서리(`edge`)는 키를 가지고, 자손 노드는 이전 값의 일부분을 공유
> * 상단에서 하단의 특정 노드로 모서리를 추가할 때마다 완벽한 키 조합을 생성하게 됨
>   * 각 서브트리 끝 부분에서 nil 잎을 이용해서 더 이상의 노드가 없음을 나타내기도 함
>   * 내부 노드에서 nil을 전달해서 키 조합의 완성 시기를 알려주기도 함

* 검색의 최악의 시간 복잡성 : O(n) (n은 키의 최대 길이)
* 트라이 트리의 높이 : n
* 해시 함수를 필요로 하지 않으며, 키 충돌 역시 발생하지 않음
* 값은 순위에 따라 나열됨 (알파벳 순과 같이 편리한 방식으로 값을 표시할 수 있음)
* 루트 노드는 항상 빈 상태

![trie tree 이미지 검색결과"](http://xueyuechuan.me/2018/12/07/Trie-Tree/c3233865f6de4508795d050e8d8302acfc2cfd3a.png)



* 자식 노드를 표현하기 위해 Dictionary 사용 : Key에 Hashable 프로토콜 채택

```swift
public class TireNode<Key: Hashable> {
  public var key: Key? // 노드의 데이터
  public weak var parent: TrieNode?
  // 삭제할 때 부모와 내가 서로 참조되고 있으면 참조 이슈가 발생할 수 있으므로
  public var children: [Key: TrieNode] = [:]
  public var isTerminating = false // 한 단어의 끝을 알려줌
  public init(key: Key?, parent: TrieNode?) {
    self.key = key
    self.parent = parent
  }
}

public class Trie<CollectionType: Collection> where CollectionType.Element: Hashable {
  
  public typealias Node = TrieNode<CollectionType.Element>
  private let root = Node(key: nil, parent: nil)
  public init() {}
}

public func insert(_ collection: CollectionType) {
  var current = root
  
  for element in collection {
    if current.children[element] == nil {
      current.children[element] = Node(key: element, parent: current)
    }
    current = current.children[element]!
    }
  current.isTerminating = true
  }

public func contains(_ collection: CollectionType) -> Bool {
  var current = root
  
  for element in collection {
    guard let child = current.children[element] else {
      return false
    }
    current = child
  }
  return current.isTerminating
}

public func remove(_ collection: CollectionType) {
  var current = root
  for element in collection {
    guard let child = current.children[element] else { return }
    gurad current.isTerminating else { return print("완성 단어가 아님")}
    current.isTerminating = false
    while current.children.isEmpty && !current.isTerminating {
      current.parent!.children[current.key!] = nil
      current = current.parent!
    }
  }
}

extension Trie where CollectionType: RangeReplaceableCollection {
  public func collections(startingWith prefix: CollectionType) -> 
}

```











































> [참고1] Swift Data Structure and Algorithms
>
> [참고2](https://the-brain-of-sic2.tistory.com/40)
>
> 