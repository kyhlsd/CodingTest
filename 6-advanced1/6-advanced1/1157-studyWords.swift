//
//  1157-studyWords.swift
//  6-advanced
//
//  Created by 김영훈 on 10/7/24.
//

import Foundation

let input = Array(readLine()!)
var dict: [Character: Int] = [Character: Int]()

for char in input {
    let uppercasedChar = Character(char.uppercased())
    if let duplicated = dict[uppercasedChar] {
        dict[uppercasedChar]! += 1
    } else {
        dict[uppercasedChar] = 1
    }
}

var maxNumber = 0
var hasSameMaxNumber = false

for (char, number) in dict {
    if number > maxNumber {
        maxNumber = number
        hasSameMaxNumber = false
    } else if number == maxNumber {
        hasSameMaxNumber = true
    }
}

if hasSameMaxNumber {
    print("?")
} else {
    print(dict.filter { $0.value == maxNumber }.map { $0.key}[0])
}
