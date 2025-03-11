//
//  6_3_Sort.swift
//  BookExample
//
//  Created by 김영훈 on 3/11/25.
//

// page: 180
import Foundation

let n = Int(readLine()!)!
var array = [[String]]()
for _ in 0..<n {
    array.append(readLine()!.split(separator: " ").map { String($0) })
}
array.sort { Int($0[1])! < Int($1[1])! }

for name in array.map({ $0[0] }) {
    print(name, terminator: " ")
}
