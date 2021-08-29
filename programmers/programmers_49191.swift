//
//  programmers_49191.swift
//  algo
//
//  Created by 이재은 on 2021/08/29.
//  Copyright © 2021 이재은. All rights reserved.
//

// programmers 순위 49191

//문제 설명
//n명의 권투선수가 권투 대회에 참여했고 각각 1번부터 n번까지 번호를 받았습니다. 권투 경기는 1대1 방식으로 진행이 되고, 만약 A 선수가 B 선수보다 실력이 좋다면 A 선수는 B 선수를 항상 이깁니다. 심판은 주어진 경기 결과를 가지고 선수들의 순위를 매기려 합니다. 하지만 몇몇 경기 결과를 분실하여 정확하게 순위를 매길 수 없습니다.
//
//선수의 수 n, 경기 결과를 담은 2차원 배열 results가 매개변수로 주어질 때 정확하게 순위를 매길 수 있는 선수의 수를 return 하도록 solution 함수를 작성해주세요.
//
//제한사항
//선수의 수는 1명 이상 100명 이하입니다.
//경기 결과는 1개 이상 4,500개 이하입니다.
//results 배열 각 행 [A, B]는 A 선수가 B 선수를 이겼다는 의미입니다.
//모든 경기 결과에는 모순이 없습니다.
//입출력 예
//n    results    return
//5    [[4, 3], [4, 2], [3, 2], [1, 2], [2, 5]]    2
//입출력 예 설명
//2번 선수는 [1, 3, 4] 선수에게 패배했고 5번 선수에게 승리했기 때문에 4위입니다.
//5번 선수는 4위인 2번 선수에게 패배했기 때문에 5위입니다.

func solution(_ n: Int, _ results: [[Int]]) -> Int {
    return checkRank(n, floyd(n, results))
}

func floyd(_ n: Int, _ results: [[Int]]) -> [[Int]] {
    var rank: [[Int]] = Array(repeating: Array(repeating: Int.max, count: n + 1), count: n + 1)

    for i in 1...n {
        rank[i][i] = 0
    }

    for result in results {
        rank[result[0]][result[1]] = 1
    }

    for k in 1...n {
        for i in 1...n {
            for j in 1...n {
                if rank[i][k] == Int.max || rank[k][j] == Int.max { continue }
                rank[i][j] = min(rank[i][j], rank[i][k] + rank[k][j])
            }
        }
    }
    return rank
}

func checkRank(_ n: Int, _ rank: [[Int]]) -> Int {
    var result = 0

    for i in 1...n {
        var count = 0
        for j in 1...n {
            if rank[i][j] != Int.max || rank[j][i] != Int.max {
                count += 1
            }
        }
        if count == n {
            result += 1
        }
    }
    return result
}

print(solution(5, [[4, 3], [4, 2], [3, 2], [1, 2], [2, 5]])) //2
