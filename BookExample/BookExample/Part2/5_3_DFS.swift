//
//  5_3_DFS.swift
//  BookExample
//
//  Created by 김영훈 on 3/10/25.
//

// page: 149
import Foundation

let inputs = readLine()!.split(separator: " ").map { Int($0)! }
var map = [[Int]]()
for _ in 1...inputs[0] {
    map.append(readLine()!.split(separator: " ").map { Int($0)!} )
}

func dfs(_ x: Int, _ y: Int) -> Bool {
    if x <= -1 || x >= inputs[0] || y <= -1 || y >= inputs[1] {
        return false
    }
    if map[x][y] == 0 {
        map[x][y] = 1
        let _ = dfs(x-1, y)
        let _ = dfs(x, y-1)
        let _ = dfs(x+1, y)
        let _ = dfs(x, y+1)
        return true
    }
    return false
}

var result = 0
for i in 0..<inputs[0] {
    for j in 0..<inputs[1] {
        if dfs(i,j) {
            result += 1
        }
    }
}

print(result)
