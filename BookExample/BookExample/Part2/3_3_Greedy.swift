//
//  3_3_Greedy.swift
//  BookExample
//
//  Created by 김영훈 on 3/7/25.
//

//page: 97
import Foundation

let inputs = Array(readLine()!.split(separator: " ").map { Int($0)! })
let n = inputs[0]

var result = 0
for _ in 0..<n {
    let min = Array(readLine()!.split(separator: " ").map { Int($0)! }).min()!
    result = max(result, min)
}

print(result)
