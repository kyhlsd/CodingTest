//
//  11_3_Greedy.swift
//  BookExample
//
//  Created by 김영훈 on 3/16/25.
//

// page: 313
import Foundation

let inputs = readLine()!.split(separator: "").map { Int($0)! }

var lastChar = -1
var count = 0

for input in inputs {
    if lastChar != input {
        lastChar = input
        count += 1
    }
}

print(count/2)
