//
//  main.swift
//  BookExample
//
//  Created by 김영훈 on 3/7/25.
//

import Foundation

let inputs = readLine()!.split(separator: " ").map { Int($0)! }
var map = [[Int]]()
for _ in 1...inputs[0] {
    map.append(readLine()!.split(separator: " ").map { Int($0)!} )
}

