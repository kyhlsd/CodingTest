//
//  13_17_BFS.swift
//  BookExample
//
//  Created by 김영훈 on 3/24/25.
//

// page: 344
import Foundation

let nk = readLine()!.split(separator: " ").map { Int($0)! }
let (n, k) = (nk[0], nk[1])
var arr: [[Int]] = []
for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map { Int($0)! })
}
let sxy = readLine()!.split(separator: " ").map { Int($0)! }
let (s, x, y) = (sxy[0], sxy[1], sxy[2])

let dx = [-1, 1, 0, 0]
let dy = [0, 0, -1, 1]

func transition() {
    var transitionArray = [(Int, Int, Int)]()
    for i in 0..<n {
        for j in 0..<n {
            if arr[i][j] != 0 {
                transitionArray.append((arr[i][j], i, j))
            }
        }
    }
    transitionArray.sort { $0.0 < $1.0 }
    for (value, i, j) in transitionArray {
        for k in 0..<4 {
            let nx = i + dx[k]
            let ny = j + dy[k]
            if nx >= 0, nx < n, ny >= 0, ny < n, arr[nx][ny] == 0 {
                arr[nx][ny] = value
            }
        }
    }
}

for _ in 0..<s {
    transition()
}

print(arr[x - 1][y - 1])

//3 3
//1 0 2
//0 0 0
//3 0 0
//2 3 2
// -> 2

//3 3
//1 0 2
//0 0 0
//3 0 0
//1 2 2
// -> 0
