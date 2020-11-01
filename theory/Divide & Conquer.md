# 분할 정복(`Divide & Conquer`)

## 1. 정의

* 문제를 나눌 수 없을 때까지 나누어서 각각을 풀면서 다시 합병하여 문제의 답을 얻는 알고리즘
* 하향식 접근법으로, 상위의 해답을 구하기 위해, 아래로 내려가면서 하위의 해답을 구하는 방식
  * 일반적으로 재귀함수로 구현
* 문제를 잘게 쪼갤 때, 부분 문제는 서로 중복되지 않음
  * Ex) 병합 정렬, 퀵 정렬 등



## 2. 동적 계획법과의 공통점과 차이점

* 공통점

  * **문제를 잘게 쪼개서 가장 작은 단위로 분할**

* 차이점

  * 동적 계획법
    * 부분 문제는 중복되어 상위 문제 해결시 재활용됨
    * Memoization 기법 사용 (부분 문제의 해답을 저장해서 재활용하는 최적화 기법으로 사용)
  * 분할 정복
    * **부분 문제는 서로 중복되지 않음**
    * **Memoization 기법 사용 안함**

  

## 3. 퀵 정렬(`Quick sort`)

* 정렬 알고리즘의 꽃
* 기준점(`pivot`)을 정해서 기준점보다 작은 데이터는 왼쪽(`left`)으로, 큰 데이터는 오른쪽(`right`)으로 모으는 함수를 작성함.
* 각 왼쪽, 오른쪽은 재귀용법을 사용해서 다시 동일 함수를 호출하여 위 작업을 반복함.
* 함수는 왼쪽 + 기준점 + 오른쪽을 리턴함.
* 시간 복잡도: 병합 정렬과 유사. `O(nlogn)` 
  * 최악의 경우, 기준점(`pivot`)이 배열에서 가장 크거나 가장 작으면 모든 원소를 비교해야 됨. `O(n^2)`

![](https://gmlwjd9405.github.io/images/algorithm-quick-sort/quick-sort.png)

```swift
func quickSort(_ array: [Int]) -> [Int] {
    if array.count < 2 { return array }
    let pivot = array[0]
    let result = quickSort(array.filter { $0 < pivot }) + [pivot] + quickSort(array.filter { $0 > pivot })
    return result
}
```































