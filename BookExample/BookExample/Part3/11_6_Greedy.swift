//
//  11_6_Greedy.swift
//  BookExample
//
//  Created by 김영훈 on 3/18/25.
//

import Foundation

func solution(foodTimes: [Int], k: Int) -> Int {
    if foodTimes.reduce(0, +) <= k {
        return -1
    }
    if k == 0 {
        return 1
    }
    
    var kCopy = k
    
    var queue = [(Int, Int)]()
    for i in 0..<foodTimes.count {
        queue.append((foodTimes[i], i+1))
    }
    queue.sort { $0.0 < $1.0 }
    
    while kCopy - queue.first!.0 * queue.count >= 0 {
        let minValue = queue.first!.0
        kCopy = kCopy - minValue * queue.count
        queue.removeFirst()
        queue = queue.map { ($0.0 - minValue, $0.1) }
    }
    
    queue.sort { $0.1 < $1.1 }
    return queue[kCopy % queue.count].1
}

print(solution(foodTimes: [3, 1, 2], k: 5))
print(solution(foodTimes: [8, 6, 4], k: 15))
