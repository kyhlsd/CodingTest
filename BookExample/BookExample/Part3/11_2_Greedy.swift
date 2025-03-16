//
//  11_2_Greedy.swift
//  BookExample
//
//  Created by 김영훈 on 3/16/25.
//

// page: 312
import Foundation

let inputs = readLine()!.split(separator: "").map { Int($0)! }

var result = 0
for input in inputs {
    result = max(result + input, result * input)
}

print(result)
