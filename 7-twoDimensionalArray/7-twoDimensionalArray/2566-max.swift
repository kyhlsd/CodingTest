//
//  2566-max.swift
//  7-twoDimensionalArray
//
//  Created by 김영훈 on 10/11/24.
//

import Foundation
 
var input = [[Int]]()
var max = 0
var row = 1
var col = 1

for _ in 0..<9 {
    input.append( Array(readLine()!.split(separator: " ").map { Int($0)! }))
}

for i in 0..<9 {
    for j in 0..<9 {
        if input[i][j] > max {
            max = input[i][j]
            row = i+1
            col = j+1
        }
    }
}

print("\(max)\n\(row) \(col)")
