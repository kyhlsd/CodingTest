//
//  Part2.swift
//  BookExample
//
//  Created by 김영훈 on 3/7/25.
//

// page: 92
import Foundation

let inputs = Array(readLine()!.split(separator: " ").map { Int($0)! })
let numbers = Array(readLine()!.split(separator: " ").map { Int($0)! })

let n = inputs[0]
let m = inputs[1]
let k = inputs[2]

let sortedNumbers = numbers.sorted(by: >)

let i = m / (k+1)
print(i * sortedNumbers[1] + (m-i) * sortedNumbers[0])

