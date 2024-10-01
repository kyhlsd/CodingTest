//
//  10811-reverseBasket.swift
//  4-oneDimensionalArray
//
//  Created by 김영훈 on 10/2/24.
//

import Foundation

var answer = ""
let firstInputLine = readLine()!.split(separator: " ").map { Int($0) }
let n = firstInputLine[0]!
let m = firstInputLine[1]!

var array: [Int] = Array(1...n)

for _ in 0..<m {
    let inputs = readLine()!.split(separator: " ").map { Int($0) }
    let i = inputs[0]! - 1
    let j = inputs[1]! - 1
    array.replaceSubrange(i...j, with: array[i...j].reversed())
}

for number in array {
    answer += String(number) + " "
}

answer.removeLast()
print(answer)
