//
//  main.swift
//  7-twoDimensionalArray
//
//  Created by 김영훈 on 10/11/24.
//

import Foundation
 
let n = Int(readLine()!)!
var input = [[Int]]()
var answer = 0

for _ in 0..<n {
    input.append(Array(readLine()!.split(separator: " ").map { Int($0)!} ))
}

var paper = [[Int]](repeating: [Int](repeating: 0, count: 100), count: 100)

for i in 0..<n {
    for x in input[i][0]..<(input[i][0] + 10) {
        for y in input[i][1]..<(input[i][1] + 10) {
            paper[x][y] = 1
        }
    }
}

for x in 0..<100 {
    for y in 0..<100 {
        answer += paper[x][y]
    }
}

print(answer)
