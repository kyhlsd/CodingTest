//
//  main.swift
//  3-Loop
//
//  Created by 김영훈 on 7/29/24.
//

import Foundation

var answer = ""

while let numbers = readLine()?.split(separator: " ").map({ Int($0) }) {
    answer += "\(numbers[0]! + numbers[1]!)\n"
}
answer.removeLast()
print(answer)
