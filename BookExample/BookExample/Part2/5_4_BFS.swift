//
//  5_4_BFS.swift
//  BookExample
//
//  Created by 김영훈 on 3/11/25.
//

// page: 152
import Foundation

let inputs = readLine()!.split(separator: " ").map { Int($0)! }
var map = [[Int]]()
for _ in 0..<inputs[0] {
    map.append(readLine()!.split(separator: "").map { Int($0)! })
}

var queueArray = [(Int, Int)]()
queueArray.append((0,0))

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

while !queueArray.isEmpty {
    let (x, y) = queueArray.removeFirst()
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        if nx < 0 || nx >= inputs[0] || ny < 0 || ny >= inputs[1] {
            continue
        }
        if map[nx][ny] == 0 {
            continue
        } else if map[nx][ny] == 1 {
          map[nx][ny] = map[x][y] + 1
            queueArray.append((nx, ny))
        }
    }
}

print(map[inputs[0] - 1][inputs[1] - 1])
