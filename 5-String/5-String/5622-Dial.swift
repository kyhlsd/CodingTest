//
//  5622-Dial.swift
//  5-String
//
//  Created by 김영훈 on 10/3/24.
//

import Foundation

let input: [Character] = Array(readLine()!)

func alphabetToTime(alphabet: Character) -> Int {
    let alphabetNumber = Int(alphabet.asciiValue!) - 65
    switch alphabetNumber {
    case 0..<15:
        return alphabetNumber / 3 + 3
    case 15..<19:
        return 8
    case 19..<22:
        return 9
    default:
        return 10
    }
}

var totalTime = 0

for alphabet in input {
    totalTime += alphabetToTime(alphabet: alphabet)
}

print(totalTime)
