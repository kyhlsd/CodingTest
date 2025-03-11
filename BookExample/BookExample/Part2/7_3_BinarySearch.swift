//
//  7_3_BinarySearch.swift
//  BookExample
//
//  Created by 김영훈 on 3/11/25.
//

// page: 201
import Foundation

let inputs = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (inputs[0], inputs[1])
let heights = readLine()!.split(separator: " ").map { Int($0)! }

var left = 0
var right = heights.max()!
var result = 0

while left <= right {
    let mid = (left + right) / 2
    let remains = heights.map { $0 > mid ? $0 - mid : 0 }
    let sum = remains.reduce(0, +)
    if sum < m {
        right = mid - 1
    } else {
        result = mid
        left = mid + 1
    }
}

print(result)
