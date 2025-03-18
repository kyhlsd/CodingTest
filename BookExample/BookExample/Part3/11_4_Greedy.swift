//
//  11_4_Greedy.swift
//  BookExample
//
//  Created by 김영훈 on 3/16/25.
//

// page: 314
import Foundation

let n = Int(readLine()!)!
var inputs = readLine()!.split(separator: " ").map { Int($0)! }

inputs.sort()

var target = 1

for input in inputs {
    if target < input {
        break
    }
    target += input
}

print(target)



