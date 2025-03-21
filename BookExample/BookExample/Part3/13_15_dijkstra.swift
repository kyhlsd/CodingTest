//
//  13_15_dijkstra.swift
//  BookExample
//
//  Created by 김영훈 on 3/21/25.
//

// page: 339
import Foundation

let nmkx = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m, k, x) = (nmkx[0], nmkx[1], nmkx[2], nmkx[3])

var graph = [[(Int, Int)]](repeating: [], count: n + 1)
for _ in 0..<m {
    let ab = readLine()!.split(separator: " ").map { Int($0)! }
    let (a, b) = (ab[0], ab[1])
    graph[a].append((b, 1))
}
var distances = [Int](repeating: Int(1e9), count: n + 1)
var visited = [Bool](repeating: false, count: n + 1)

func getSmallestNode() -> Int {
    var minValue = Int(1e9)
    var index = 0
    for i in 1...n {
        if distances[i] < minValue && !visited[i] {
            minValue = distances[i]
            index = i
        }
    }
    return index
}

func dijkstra(_ start: Int) {
    distances[start] = 0
    visited[start] = true
    for j in graph[start] {
        distances[j.0] = j.1
    }
    for _ in 0..<n {
        let now = getSmallestNode()
        visited[now] = true
        for j in graph[now] {
            let cost = distances[now] + j.1
            if cost < distances[j.0] {
                distances[j.0] = cost
            }
        }
    }
}

dijkstra(x)
var result = [Int]()
for i in 1...n {
    if distances[i] == k {
        result.append(i)
    }
}

if result.isEmpty {
    print("-1")
} else {
    for i in result {
        print(i)
    }
}
