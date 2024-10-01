//
//  1546-average.swift
//  4-oneDimensionalArray
//
//  Created by 김영훈 on 10/2/24.
//

import Foundation

let n = readLine()!.split(separator: " ").map { Int($0) }[0]!

var scores: [Double] = readLine()!.split(separator: " ").map { Double($0)! }
let maxScore: Double = scores.max()!

var newScoresSum: Double = 0

for score in scores {
    newScoresSum += (score / maxScore * 100)
}

let answer: Double = newScoresSum / Double(scores.count)
print(answer)

