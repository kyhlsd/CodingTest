//
//  4_1_1.swift
//  BookExample
//
//  Created by 김영훈 on 3/8/25.
//

// page: 111
import Foundation

let n = readLine()!.split(separator: " ").map { Int($0)! }[0]
let inputs = readLine()!.split(separator: " ")

var (x,y) = (0,0)

enum Directions: String {
    case left = "L"
    case right = "R"
    case up = "U"
    case down = "D"
}

for input in inputs {
    if let input = Directions(rawValue: String(input)) {
        switch input {
        case .left:
            if x > 0 {
                x -= 1
            }
        case .right:
            if x < n-1 {
                x += 1
            }
        case .up:
            if y > 0 {
                y -= 1
            }
        case .down:
            if y < n-1 {
                y += 1
            }
        }
    }
}

print("\(x+1) \(y+1)")
