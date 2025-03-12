//
//  8_2_DynamicProgramming.swift
//  BookExample
//
//  Created by 김영훈 on 3/11/25.
//

// page: 217
import Foundation

var x = Int(readLine()!)!

var array = [Int](repeating: 0, count: x+1)

for i in stride(from: 2, to: x+1, by: 1) {
    array[i] = 1 + array[i-1]
    if i % 5 == 0 {
        array[i] = min(array[i], array[i/5] + 1)
    }
    if i % 3 == 0 {
        array[i] = min(array[i], array[i/3] + 1)
    }
    if i % 2 == 0 {
        array[i] = min(array[i], array[i/2] + 1)
    }
        
}

print(array[x])
