//
//  programmers_60060.swift
//  algo
//
//  Created by 이재은 on 2021/09/06.
//  Copyright © 2021 이재은. All rights reserved.
//

// programmers 60060 가사 검색 카카오 2020
//문제 설명
//[본 문제는 정확성과 효율성 테스트 각각 점수가 있는 문제입니다.]
//
//친구들로부터 천재 프로그래머로 불리는 프로도는 음악을 하는 친구로부터 자신이 좋아하는 노래 가사에 사용된 단어들 중에 특정 키워드가 몇 개 포함되어 있는지 궁금하니 프로그램으로 개발해 달라는 제안을 받았습니다.
//그 제안 사항 중, 키워드는 와일드카드 문자중 하나인 '?'가 포함된 패턴 형태의 문자열을 뜻합니다. 와일드카드 문자인 '?'는 글자 하나를 의미하며, 어떤 문자에도 매치된다고 가정합니다. 예를 들어 "fro??"는 "frodo", "front", "frost" 등에 매치되지만 "frame", "frozen"에는 매치되지 않습니다.
//
//가사에 사용된 모든 단어들이 담긴 배열 words와 찾고자 하는 키워드가 담긴 배열 queries가 주어질 때, 각 키워드 별로 매치된 단어가 몇 개인지 순서대로 배열에 담아 반환하도록 solution 함수를 완성해 주세요.
//
//가사 단어 제한사항
//words의 길이(가사 단어의 개수)는 2 이상 100,000 이하입니다.
//각 가사 단어의 길이는 1 이상 10,000 이하로 빈 문자열인 경우는 없습니다.
//전체 가사 단어 길이의 합은 2 이상 1,000,000 이하입니다.
//가사에 동일 단어가 여러 번 나올 경우 중복을 제거하고 words에는 하나로만 제공됩니다.
//각 가사 단어는 오직 알파벳 소문자로만 구성되어 있으며, 특수문자나 숫자는 포함하지 않는 것으로 가정합니다.
//검색 키워드 제한사항
//queries의 길이(검색 키워드 개수)는 2 이상 100,000 이하입니다.
//각 검색 키워드의 길이는 1 이상 10,000 이하로 빈 문자열인 경우는 없습니다.
//전체 검색 키워드 길이의 합은 2 이상 1,000,000 이하입니다.
//검색 키워드는 중복될 수도 있습니다.
//각 검색 키워드는 오직 알파벳 소문자와 와일드카드 문자인 '?' 로만 구성되어 있으며, 특수문자나 숫자는 포함하지 않는 것으로 가정합니다.
//검색 키워드는 와일드카드 문자인 '?'가 하나 이상 포함돼 있으며, '?'는 각 검색 키워드의 접두사 아니면 접미사 중 하나로만 주어집니다.
//예를 들어 "??odo", "fro??", "?????"는 가능한 키워드입니다.
//반면에 "frodo"('?'가 없음), "fr?do"('?'가 중간에 있음), "?ro??"('?'가 양쪽에 있음)는 불가능한 키워드입니다.
//입출력 예
//words    queries    result
//["frodo", "front", "frost", "frozen", "frame", "kakao"]    ["fro??", "????o", "fr???", "fro???", "pro?"]    [3, 2, 4, 1, 0]
//입출력 예에 대한 설명
//"fro??"는 "frodo", "front", "frost"에 매치되므로 3입니다.
//"????o"는 "frodo", "kakao"에 매치되므로 2입니다.
//"fr???"는 "frodo", "front", "frost", "frame"에 매치되므로 4입니다.
//"fro???"는 "frozen"에 매치되므로 1입니다.
//"pro?"는 매치되는 가사 단어가 없으므로 0 입니다.

class Node {
    var key: Character?
    var children = [Character: Node]()
    var count: Int = 0

    init(_ key: Character? = nil) {
        self.key = key
    }
}

class Trie {
    var head: Node

    init() {
        self.head = Node()
    }

    func insert(_ word: String) {
        var currentNode = self.head
        for char in word {
            if currentNode.children[char] == nil {
                currentNode.children[char] = Node(char)
            }
            currentNode.count += 1
            currentNode = currentNode.children[char]!
        }
    }

    func containedCount(_ query: String) -> Int {
         var currentNode = self.head

        for char in query {
            if char == "?" {
                return currentNode.count
            }

            guard let current = currentNode.children[char] else {
                return 0
            }
            currentNode = current
        }
        return currentNode.children.count
    }
}

func solution(_ words: [String], _ queries: [String]) -> [Int] {
    var result = [Int]()
    var prefixTrie = [Int: Trie]()
    var suffixTrie = [Int: Trie]()

    words.forEach {
        let wordCount = $0.count
        if prefixTrie[wordCount] == nil {
            prefixTrie[wordCount] = Trie()
            suffixTrie[wordCount] = Trie()
        }
        prefixTrie[$0.count]?.insert($0)
        suffixTrie[$0.count]?.insert(String($0.reversed()))
    }

    queries.forEach {
        if $0.hasSuffix("?") {
            result.append(prefixTrie[$0.count]?.containedCount($0) ?? 0)
        } else {
            result.append(suffixTrie[$0.count]?.containedCount(String($0.reversed())) ?? 0)
        }
    }
    return result
}

print(solution(["frodo", "front", "frost", "frozen", "frame", "kakao"], ["fro??", "????o", "fr???", "fro???", "pro?"])) // [3, 2, 4, 1, 0]
print(solution(["frodo", "front", "frost", "frozen", "frame", "kakao"], ["????o"])) // [2]


// 효율성 2번만 시간 초과
func solution(_ words: [String], _ queries: [String]) -> [Int] {
    var result = [Int]()
    var filteredWords: [Int: [String]] = [:]
    var queryResult: [String: Int] = [:]

    queries.forEach {
        result.append(findWordCount(words, $0, $0.count, &filteredWords, &queryResult))
    }
    return result
}

func findWordCount(_ words: [String], _ matchingWord: String, _ mWordCount: Int,
                   _ filteredWords: inout [Int: [String]], _ queryResult: inout [String: Int]) -> Int {
    if let wordCount = queryResult[matchingWord] {
        return wordCount
    }

    var wordCount = 0
    var fWords = words
    if let filteredWord = filteredWords[mWordCount] {
        fWords = filteredWord
    } else {
        fWords = fWords.filter { $0.count == mWordCount }
        filteredWords[mWordCount] = fWords
    }

    let queryWord = matchingWord.replacingOccurrences(of: "?", with: "")
    if queryWord.isEmpty {
        queryResult[matchingWord] = fWords.count
        return fWords.count
    }

    if matchingWord.first != "?" {
        wordCount = fWords.filter { $0.hasPrefix(queryWord) }.count
    } else {
        wordCount = fWords.filter { $0.hasSuffix(queryWord) }.count
    }

    queryResult[matchingWord] = wordCount
    return wordCount
}
