//
//  8_3_DynamicProgramming.swift
//  BookExample
//
//  Created by 김영훈 on 3/12/25.
//

// page: 220
import Foundation

let n = Int(readLine()!)!
let inputs = readLine()!.split(separator: " ").map { Int($0)! }

var sums = [Int]()

sums.append(inputs[0])
sums.append(max(inputs[0],inputs[1]))

for i in 2..<n {
    sums.append(max(sums[i-1], sums[i-2] + inputs[i]))
}

print(sums[n-1])
