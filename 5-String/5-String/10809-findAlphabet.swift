//
//  10809-findAlphabet.swift
//  5-String
//
//  Created by 김영훈 on 10/3/24.
//

import Foundation

let input = Array(readLine()!)

var answerArray: [Int] = Array(repeating: -1, count: 26)

for i in 0..<input.count {
    let index = Int(input[i].asciiValue!) - 97
    if answerArray[index] == -1 {
        answerArray[index] = i
    }
}

var answerString = ""
for answer in answerArray {
    answerString += "\(answer) "
}
answerString.removeLast()

print(answerString)
