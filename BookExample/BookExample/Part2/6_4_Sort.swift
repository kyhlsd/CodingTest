//
//  6_4_Sort.swift
//  BookExample
//
//  Created by 김영훈 on 3/11/25.
//

// page: 182
import Foundation

let inputs = readLine()!.split(separator: " ").map { Int($0)! }
var arrayA = readLine()!.split(separator: " ").map { Int($0)! }
var arrayB = readLine()!.split(separator: " ").map { Int($0)! }

arrayA.sort(by: <)
arrayB.sort(by: >)

for i in 0..<inputs[1] {
    if arrayA[i] < arrayB[i] {
        swap(&arrayA[i], &arrayB[i])
    } else {
        break
    }
}

let result = arrayA.reduce(0, +)
print(result)
