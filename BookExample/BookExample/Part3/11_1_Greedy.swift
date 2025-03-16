//
//  1_1_Greedy.swift
//  BookExample
//
//  Created by 김영훈 on 3/16/25.
//

// page: 311
import Foundation

let n = Int(readLine()!)!
var inputs = readLine()!.split(separator: " ").map { Int($0)! }

inputs.sort(by: <)
var count = 0


while !inputs.isEmpty {
    let value = inputs[0]
    if value <= inputs.count {
        var removedValues = [Int]()
        for _ in 0..<value {
            removedValues.append(inputs[0])
            inputs.removeFirst()
        }
        if removedValues.max()! <= value {
            count += 1
        } else {
            break
        }
    } else {
        break
    }
}

print(count)
