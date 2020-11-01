# 동적 계획법(`Dynamic Programming`)

## 1. 정의

* DP라고 많이 부름
* 입력 크기가 작은 부분 문제들을 해결한 후, 해당 부분 문제의 해를 활용해서 보다 큰 크기의 부분 문제를 해결함. 최종적으로 전체 문제를 해결하는 알고리즘
* 상향식 접근법으로, 가장 최하위 해답을 구한 후, 이를 저장하고, 해당 결과값을 이용해서 상위 문제를 풀어가는 방식
* **Memoization 기법**을 **반드시** 사용함. 
  * 프로그램 실행시 이전에 계산한 값을 저장하여, 다시 계산하지 않도록 하여 전체 실행 속도를 빠르게 하는 기술
* 문제를 잘게 쪼갤 때, 부분 문제는 중복되어 재활용됨.
  * Ex. 피보나치 수열



## 2. 분할 정복과의 공통점과 차이점

* 공통점
  * **문제를 잘게 쪼개서 가장 작은 단위로 분할**
* 차이점
  * 동적 계획법
    * **부분 문제는 중복되어 상위 문제 해결시 재활용됨**
    * **Memoization 기법 사용** (부분 문제의 해답을 저장해서 재활용하는 최적화 기법으로 사용)
  * 분할 정복
    * 부분 문제는 서로 중복되지 않음
    * Memoization 기법 사용 안함



## 3. 활용

![](https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Ft1.daumcdn.net%2Fcfile%2Ftistory%2F267EC74E5702798727)

```swift
// 재귀 활용
func fibonacci(_ n: Int) -> Int {
  	if n <= 1 { return n }

    return fibonacci(n - 1) + fibonacci(n - 2)
}
print(fibonacci(n))

// 동적 계획법 활용
func fibonacci2(_ n: Int) -> Int {
  var cache = [Int](repeating: 0, count: n+1)
  cache[0] = 0
  cache[1] = 1

  for index in 2..<n+1 {
    cache[index] = cache[index - 1] + cache[index - 2]
  }
  return cache[n]
}
```