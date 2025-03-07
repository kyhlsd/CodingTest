//
//  main.swift
//  13-Sort
//
//  Created by 김영훈 on 11/18/24.
//

import Foundation

let n = Int(readLine()!)!
var array = [Int]()

for _ in 0..<n {
    array.append(Int(readLine()!)!)
}

array = array.sorted()

for number in array {
    print(number)
}
