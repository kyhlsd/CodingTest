//
//  13_19.swift
//  BookExample
//
//  Created by 김영훈 on 3/24/25.
//

// page: 350
import Foundation

let n = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map { Int($0)! }
let operatorCounts = readLine()!.split(separator: " ").map { Int($0)! }

var operatorArray = [String]()
let operators = ["+", "-", "*", "/"]
for i in 0..<4 {
    for _ in 0..<operatorCounts[i] {
        operatorArray.append(operators[i])
    }
}

func permutations<T>(_ array: [T]) -> [[T]] {
    guard array.count > 1 else { return [array] }
    
    var result: [[T]] = []
    
    for (index, element) in array.enumerated() {
        var remaining = array
        remaining.remove(at: index)
        
        for perm in permutations(remaining) {
            result.append([element] + perm)
        }
    }
    
    return result
}

let operatorPermutations = permutations(operatorArray)
var maxValue = Int(-1e9)
var minValue = Int(1e9)

for operatorPermutation in operatorPermutations {
    var result = numbers[0]
    for i in 1..<n {
        switch operatorPermutation[i-1] {
        case "+" : result += numbers[i]
        case "-" : result -= numbers[i]
        case "*" : result *= numbers[i]
        case "/" : result /= numbers[i]
        default : break
        }
    }
    maxValue = max(maxValue, result)
    minValue = min(minValue, result)
}

print(maxValue)
print(minValue)
