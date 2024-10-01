//
//  3052-remain.swift
//  4-oneDimensionalArray
//
//  Created by 김영훈 on 10/1/24.
//

import Foundation

var dictionary = [Int: Int]()

for _ in 0..<10 {
    var input = readLine()!.split(separator: " ").map { Int($0) }[0]!
    dictionary[input % 42] = 1
}

print(dictionary.count)
