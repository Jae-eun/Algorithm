# 유니코드

### 유니코드로 문자 변환

```swift
let num = 97
UnicodeScalar(num)! // a
```



### 문자로 유니코드 변환

```swift
var char = "A"
UnicodeScalar(char)!.value // 65
```





#  문자열 처리

### 문자열의 끝에 있는 특정 문자 제거

```swift
var swiftStr = "#Swift!"
swiftStr.trimmingCharacters(in: ["#","!"]) // Swift
```



### 문자열 안의 특정 문자 제거

```swift
var str = "He!llo~!@@@, JAE@EUN"
str.components(separatedBy: ["~","!","@",","]) // ["He", "llo", "", "", "", "", "", " JAE", "EUN"]
str.components(separatedBy: ["~","!","@",","]).joined() // Hello JAEEUN
```



### 특정 문자 바꾸기

```swift
var text = "ABCA"
text.replacingOccurrences(of: "A", with: "B") // BBCB
```



### 접미사 & 접두사

```swift
let text = "abcde"
text.prefix(2) // ab
text.suffix(2) // de
```





# 날짜

### 원하는 형식으로 오늘 날짜

```swift
let today = Date()
let dateFormatter = DateFormatter()
dateFormatter.timeZone = TimeZone.current
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss z"
dateFormatter.string(from: today) // 2019-10-24 04:58:31 GMT+9
```





# 자릿수

### 자릿수별 숫자를 배열로

```swift
let num = 123456789
let digits = String(num).compactMap{ $0.wholeNumberValue } // [1, 2, 3, 4, 5, 6, 7, 8, 9]
```





# 소수점

### 소수점 아래의 숫자가 있으면 소수점 아래를 다 버리고 정수부에 1을 더함

```swift
let num = 10.5
let num2 = 10.0
ceil(num) // 11.0
ceil(num) // 10.0
```



### 소수점 아래 버림

```swift
let num = 10.5
floor(num) // 10.0
```



### 소수점 아래를 반올림

```swift
let num = 10.5
round(num) // 11.0
```



### 제곱근을 구함

```swift
let num = 10.5
sqrt(num) // 3.24037034920393
```



###  원하는 자릿수까지 표현

> 끝자리에서 반올림 됨

```swift
String(format: "%.4f", 1.234567) // 1.2346
```





# 입력

### 입력이 끝날 때까지 실행

```swift
while let input = readLine() {
    print(input)
}
```





# 진법

### 문자를 원하는 진법의 숫자로 바꾸기

```swift
let text = "111"
Int(text, radix: 2)! // 7
```



### 10진법 숫자를 원하는 진법으로 바꾸기

```swift
let num = 1000
String(num, radix: 2) // 1111101000
String(num, radix: 16) // 3e8
String(num, radix: 16, uppercase: true) // 3E8
```

