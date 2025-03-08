//
//  4_1_2_Implement.swift
//  BookExample
//
//  Created by 김영훈 on 3/8/25.
//

// page: 113
import Foundation

let n = readLine()!.split(separator: " ").map { Int($0)! }[0]

let quotientValue = n / 3
let remainderValue = n - quotientValue + 1

let result = quotientValue * 3600 + remainderValue * ((45 * 15) + (15 * 60))
print(result)
