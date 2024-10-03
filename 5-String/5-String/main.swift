//
//  main.swift
//  5-String
//
//  Created by 김영훈 on 10/3/24.
//

import Foundation

var answer = ""

while let string = readLine() {
    answer += string + "\n"
}

answer.removeLast()

print(answer)
