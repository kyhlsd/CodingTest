//
//  8_4_DynamicProgramming.swift
//  BookExample
//
//  Created by 김영훈 on 3/12/25.
//

// page: 223
import Foundation

let n = Int(readLine()!)!

var array = [Int]()

array.append(0)
array.append(1)
array.append(3)

for i in 3...n {
    array.append(array[i-1] + 2 * array[i-2])
}

print(array[n])
