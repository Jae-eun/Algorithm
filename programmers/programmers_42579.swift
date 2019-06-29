//
//  programmers_42579.swift
//  algo
//
//  Created by 이재은 on 29/06/2019.
//  Copyright © 2019 이재은. All rights reserved.
//

import Foundation

// programmers 42579 베스트 앨범
// 스트리밍 사이트에서 장르 별로 가장 많이 재생된 노래를 두 개씩 모아 베스트 앨범을 출시하려 합니다. 노래는 고유 번호로 구분하며, 노래를 수록하는 기준은 다음과 같습니다.
//
// 속한 노래가 많이 재생된 장르를 먼저 수록합니다.
// 장르 내에서 많이 재생된 노래를 먼저 수록합니다.
// 장르 내에서 재생 횟수가 같은 노래 중에서는 고유 번호가 낮은 노래를 먼저 수록합니다.
// 노래의 장르를 나타내는 문자열 배열 genres와 노래별 재생 횟수를 나타내는 정수 배열 plays가 주어질 때, 베스트 앨범에 들어갈 노래의 고유 번호를 순서대로 return 하도록 solution 함수를 완성하세요.
//
// 제한사항
// genres[i]는 고유번호가 i인 노래의 장르
// plays[i]는 고유번호가 i인 노래가 재생된 횟수
// genres와 plays의 길이는 같으며, 이는 1 이상 10,000 이하입니다.
// 장르 종류는 100개 미만
// 장르에 속한 곡이 하나라면, 하나의 곡만 선택합니다.
// 모든 장르는 재생된 횟수가 다릅니다.

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var album = [String: Int]()
    var playList = [Int: Int]()
    var result = [Int]()
    
    // 장르별 재생횟수 총합
    for i in 0..<genres.count {
        if album[genres[i]] == nil {
            album[genres[i]] = plays[i]
        } else {
            album[genres[i]] = album[genres[i]]! + plays[i]
        }
    }
    let sortedAlbum = album.sorted{ $0.value > $1.value }
    
    // 고유 번호와 재생횟수
    for i in 0..<plays.count {
        playList[i] = plays[i]
    }
    let sortedPlayList = playList.sorted { a, b in
        if a.value == b.value {
            return a < b
        }
        return a.value > b.value
    }
    
    // 재생횟수가 높은 장르 순으로 고유번호를 찾아서 재생횟수가 높은 노래 순으로 고유번호를 결과에 넣음
    for i in 0..<sortedAlbum.count {
        var genreCount = 0
        for j in 0..<sortedPlayList.count {
            let index = sortedPlayList[j].key
            if sortedAlbum[i].key == genres[index] {
                if genreCount < 2 {
                    result.append(index)
                    genreCount += 1
                } else {
                    break
                }
            }
        }
    }
    return result
}

print(solution(["classic", "pop", "classic", "pop", "classic", "pop"],
               [400, 600, 150, 2500, 500, 2500]))
