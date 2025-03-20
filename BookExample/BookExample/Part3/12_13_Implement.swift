//
//  12_13_Implement.swift
//  BookExample
//
//  Created by 김영훈 on 3/20/25.
//

// page: 332
import Foundation

func combination<T>(_ elements: [T], _ k: Int) -> [[T]] {
    guard k > 0 else { return [[]] }
    guard k <= elements.count else { return [] }
    
    if k == elements.count {
        return [elements]
    }
    
    if k == 1 {
        return elements.map { [$0] }
    }
    
    var result = [[T]]()
    for (index, element) in elements.enumerated() {
        let remaining = Array(elements[(index + 1)...])
        let subcombinations = combination(remaining, k - 1)
        result += subcombinations.map { [element] + $0 }
    }
    
    return result
}

func getChickenDistanceSum(_ candidate: [(Int, Int)], _ houses: [(Int, Int)]) -> Int {
    var result = 0
    for (hx, hy) in houses {
        var temp = Int(1e9)
        for (cx, cy) in candidate {
            temp = min(temp, abs(hx - cx) + abs(hy - cy))
        }
        result += temp
    }
    return result
}

func solution(_ n: Int, _ m: Int, _ map: [[Int]]) -> Int {
    var chickens = [(Int, Int)]()
    var houses = [(Int, Int)]()
    
    for i in 0..<n {
        for j in 0..<n {
            if map[i][j] == 1 {
                houses.append((i,j))
            }
            if map[i][j] == 2 {
                chickens.append((i, j))
            }
        }
    }
    
    
    let candidates = combination(chickens, m)
    var result = Int(1e9)
    
    for candidate in candidates {
        result = min(result, getChickenDistanceSum(candidate, houses))
    }
    
    return result
}

print(solution(5, 3, [[0, 0, 1, 0, 0],
                     [0, 0, 2, 0, 1],
                     [0, 1, 2, 0, 0],
                     [0, 0, 1, 0, 0],
                     [0, 0, 0, 0, 2]]))
