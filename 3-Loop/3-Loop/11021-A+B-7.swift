//
//  11021-A+B-7.swift
//  3-Loop
//
//  Created by 김영훈 on 8/2/24.
//

import Foundation

var answer: String = ""
let count = Int(readLine()!)

for i in 1...count! {
    let inputNumbers = readLine()!.split(separator: " ").map { Int($0) }
    answer += "Case #\(i): \(inputNumbers[0]!+inputNumbers[1]!)\n"
}
answer.remove(at: answer.index(before: answer.endIndex))
print(answer)
