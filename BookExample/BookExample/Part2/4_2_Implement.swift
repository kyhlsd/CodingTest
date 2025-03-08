//
//  4_2_Implement.swift
//  BookExample
//
//  Created by 김영훈 on 3/8/25.
//

// page: 116
import Foundation

let input = String(readLine()!)
let x = Int(input.first!.asciiValue! - 97)
let y = Int(String(input.last!))! - 1

let moves = [(2,1), (1,2), (2,-1), (1,-2), (-2,1), (-1,2), (-2,-1), (-1,-2)]
var count = 0

for move in moves {
    let movedX = x + move.0
    let movedY = y + move.1
    
    if movedX >= 0 && movedX < 8 && movedY >= 0 && movedY < 8 {
        count += 1
    }
}

print(count)
