//
//  main.swift
//  10-RectangleAndTriangle
//
//  Created by 김영훈 on 10/29/24.
//

import Foundation

var sticks : [Int] = readLine()!.split(separator: " ").map { Int($0)! }
sticks.sort()

if sticks[2] >= sticks[0] + sticks[1] {
    sticks[2] = sticks[0] + sticks[1] - 1
}

print(sticks[0] + sticks[1] + sticks[2])
