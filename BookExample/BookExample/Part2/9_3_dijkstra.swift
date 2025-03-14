//
//  9_3_dijkstra.swift
//  BookExample
//
//  Created by 김영훈 on 3/14/25.
//

// page: 262
import Foundation

let INF = Int(1e9)

let nmc = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m, c) = (nmc[0], nmc[1], nmc[2])
var graph = Array(repeating: [(Int, Int)](), count: n+1)
var visited = Array(repeating: false, count: n+1)
var distances = Array(repeating: INF, count: n+1)

for _ in 0..<m {
    let xyz = readLine()!.split(separator: " ").map { Int($0)! }
    graph[xyz[0]].append((xyz[1], xyz[2]))
}

func getSmallestNode() -> Int {
    var minValue = INF
    var index = 0
    for i in 1...n {
        if distances[i] < minValue && !visited[i] {
            minValue = distances[i]
            index = i
        }
    }
    return index
}

func dijkstra(start: Int) {
    visited[start] = true
    distances[start] = 0
    for i in graph[start] {
        distances[i.0] = i.1
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

var count = 0
var longestDistance = 0
dijkstra(start: c)
for distance in distances {
    if distance != INF {
        count += 1
        longestDistance = max(longestDistance, distance)
    }
}
count -= 1

print("\(count) \(longestDistance)")
