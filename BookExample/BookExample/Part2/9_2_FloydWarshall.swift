//
//  9_2_FloydWarshall.swift
//  BookExample
//
//  Created by 김영훈 on 3/14/25.
//

// page: 259
import Foundation

let INF = Int(1e9)

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
var graph = [[Int]](repeating: Array(repeating: INF, count: n+1), count: n+1)
for _ in 0..<m {
    let abs = readLine()!.split(separator: " ").map { Int($0)! }
    graph[abs[0]][abs[1]] = 1
    graph[abs[1]][abs[0]] = 1
}
let xk = readLine()!.split(separator: " ").map { Int($0)! }
let (x, k) = (xk[0], xk[1])

for i in 1...n {
    graph[i][i] = 0
}

for i in 1...n {
    for a in 1...n {
        for b in 1...n {
            graph[a][b] = min(graph[a][i] + graph[i][b], graph[a][b])
        }
    }
}

let result = graph[1][k] + graph[k][x]
if result >= INF {
    print(-1)
} else {
    print(result)
}
