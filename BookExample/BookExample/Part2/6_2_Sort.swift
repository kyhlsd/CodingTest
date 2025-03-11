//
//  6_2_sort.swift
//  BookExample
//
//  Created by 김영훈 on 3/11/25.
//

// page: 178
import Foundation

let n = Int(readLine()!)!
var array = [Int]()
for _ in 0..<n {
    array.append(Int(readLine()!)!)
}
array.sort(by: >)
for number in array {
    print(number, terminator: " ")
}
