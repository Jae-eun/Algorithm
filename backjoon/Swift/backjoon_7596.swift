//
//  backjoon_7596.swift
//  algo
//
//  Created by 이재은 on 2020/10/01.
//  Copyright © 2020 이재은. All rights reserved.
//

import Foundation

//backjoon MP3 Songs 7596

//문제
//Sue loves her mp3 player but she hates the fact that her shuffle mode plays her tracks randomly. Because she loves order and patterns she would like the tunes on her mp3 player to be played in alphabetical order. In this problem you have to help Sue by sorting her tunes into alphabetical order of tune name.
//
//입력
//Input consists of a number of scenarios, each beginning with a single positive integer, n, the number of music tracks that require sorting (1 < n <= 200). The last line of input is a single 0 – this scenario should not be processed.
//
//Each scenario consists of n lines, each line containing a tune name. No line will contain more than 250 characters. Each name will begin with an alphabetic character.
//
//출력
//Output will consist of the scenario number, the first being 1, on a line on its own. This will be followed by n lines showing the tune names from the input list, sorted in alphabetical order, one name per line. Case should be ignored.

var num = 0

while true {
    let n = Int(readLine()!)!
    if n == 0 { break }
    var playlist = [String]()
    for _ in 0..<n {
        playlist.append(readLine()!)
    }

    num += 1
    print(num)
    playlist.sorted().forEach {
        print($0)
    }
}

//10
//Forever
//Take A Bow
//Always On My Mind
//Lollipop
//Love In This Club
//No Air
//Sweet About Me
//Party People
//Mercy
//American Boy
//8
//Partita
//Air on a 'G' string
//Sinfonia in D
//Jesu, joy of man's desiring
//Arioso
//Violin Concerto in A Minor
//Brandenburg Concerto 2
//Concerto for 2 violins
//0
//답
//1
//Always On My Mind
//American Boy
//Forever
//Lollipop
//Love In This Club
//Mercy
//No Air
//Party People
//Sweet About Me
//Take A Bow
//2
//Air on a 'G' string
//Arioso
//Brandenburg Concerto 2
//Concerto for 2 violins
//Jesu, joy of man's desiring
//Partita
//Sinfonia in D
//Violin Concerto in A Minor
