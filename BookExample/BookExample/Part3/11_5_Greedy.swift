//
//  11_5_Greedy.swift
//  BookExample
//
//  Created by 김영훈 on 3/16/25.
//

// page: 315
import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
let inputs = readLine()!.split(separator: " ").map { Int($0)! }
var counts = [Int]()
var result = 0

for i in 0...m {
    let count = inputs.filter { $0 == i }.count
    counts.append(count)
}

for i in 1...m {
    for j in 1...m {
        if i == j {
            continue
        } else {
            result += counts[i] * counts[j]
        }
    }
}
result /= 2

print(result)
