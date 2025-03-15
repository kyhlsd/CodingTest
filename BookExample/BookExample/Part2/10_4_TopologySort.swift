//
//  10_4_TopologySort.swift
//  BookExample
//
//  Created by 김영훈 on 3/15/25.
//

// page: 303
import Foundation

let n = Int(readLine()!)!
var indegrees = [Int](repeating: 0, count: n+1)
var times = [Int](repeating: 0, count: n+1)
var graph = [[Int]](repeating: [], count: n+1)

for i in 1...n {
    var input = readLine()!.split(separator: " ").map { Int($0)! }
    let _ = input.removeLast()
    let time = input.removeFirst()
    times[i] = time
    for k in input {
        indegrees[i] += 1
        graph[k].append(i)
    }
}

func topologySort() {
    var queue = [Int]()
    var results = times
    
    for i in 1...n {
        if indegrees[i] == 0 {
            queue.append(i)
        }
    }
    
    while !queue.isEmpty {
        let now = queue.removeFirst()
        for i in graph[now] {
            results[i] = max(results[i], results[now] + times[i])
            indegrees[i] -= 1
            if indegrees[i] == 0 {
                queue.append(i)
            }
        }
    }
    
    for i in 1...n {
        print(results[i])
    }
}

topologySort()
