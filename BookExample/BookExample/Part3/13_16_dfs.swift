//
//  13_16_dfs.swift
//  BookExample
//
//  Created by 김영훈 on 3/21/25.
//

// page: 341
import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
var temp = [[Int]]()
var map = [[Int]]()
for _ in 0..<n {
    map.append(readLine()!.split(separator: " ").map { Int($0)! })
}
temp = map
var result = 0
var count = 0

let dx = [-1, 0, 1, 0]
let dy = [0, -1, 0, 1]

func virus(x: Int, y: Int) {
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        if nx >= 0, nx < n, ny >= 0, ny < m {
            if temp[nx][ny] == 0 {
                temp[nx][ny] = 2
                virus(x: nx, y: ny)
            }
        }
    }
}

func getScore() -> Int {
    var score = 0
    for i in 0..<n {
        for j in 0..<m {
            if temp[i][j] == 0 {
                score += 1
            }
        }
    }
    return score
}

func dfs() {
    if count == 3 {
        temp = map
        for i in 0..<n {
            for j in 0..<m {
                if temp[i][j] == 2 {
                    virus(x: i, y: j)
                }
            }
        }
        result = max(result, getScore())
        return
    }
    for i in 0..<n {
        for j in 0..<m {
            if map[i][j] == 0 {
                map[i][j] = 1
                count += 1
                dfs()
                map[i][j] = 0
                count -= 1
            }
        }
    }
}

dfs()
print(result)

//inputs
//7 7
//2 0 0 0 1 1 0
//0 0 1 0 1 2 0
//0 1 1 0 1 0 0
//0 1 0 0 0 0 0
//0 0 0 0 0 1 1
//0 1 0 0 0 0 0
//0 1 0 0 0 0 0

// output
// 27

//4 6
//0 0 0 0 0 0
//1 0 0 0 0 2
//1 1 1 0 0 2
//0 0 0 0 0 2

// output
// 9
