//
//  main.swift
//  BookExample
//
//  Created by 김영훈 on 3/7/25.
//

import Foundation

let mapSizes: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
var positions: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
var maps = [[Int]]()
for _ in 0..<mapSizes[0] {
    maps.append(readLine()!.split(separator: " ").map { Int($0)! })
}

while true {
    positions[2] -= 1
    if positions[2] < 0 {
        positions[2] = 3
    }
    switch positions[3] {
    case 0:
        let dy = positions[1] + 1
        if maps[positions[0]][dy] == 0 {
            maps[positions[0]][dy] = 1
            positions[1] = dy
        } else if maps[positions[0]+1][positions[1]] == 1 && maps[positions[0]-1][positions[1]] == 1 {
            
        }
    case 1:
        let dx = positions[0] + 1
        if maps[positions[dx]][1] == 0 {
            maps[positions[dx]][1] = 1
            positions[0] = dx
        }
    case 2:
        let dy = positions[1] - 1
        if maps[positions[0]][dy] == 0 {
            maps[positions[0]][dy] = 1
            positions[1] = dy
        }
    case 3:
        let dx = positions[0] - 1
        if maps[positions[dx]][1] == 0 {
            maps[positions[dx]][1] = 1
            positions[0] = dx
        }
    default:
        break
    }
}
