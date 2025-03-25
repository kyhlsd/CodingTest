//
//  13_20_BFS.swift
//  BookExample
//
//  Created by 김영훈 on 3/25/25.
//

// page: 351
import Foundation

let n = Int(readLine()!)!
var map = [[String]]()
for _ in 0..<n {
    map.append(readLine()!.split(separator: " ").map { String($0) })
}
var verticalVisited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
var horizontalVisited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
let dx = [-1, 1]
let dy = [-1, 1]

func checkVertical(_ x: Int, _ y: Int, _ arr: [[String]]) -> Bool {
    for i in 0..<2 {
        let ny = y + dy[i]
        if ny >= 0, ny < n, !verticalVisited[x][ny] {
            verticalVisited[x][ny] = true
            if arr[x][ny] == "O" {
                return true
            }
            if arr[x][ny] == "S" {
                return false
            }
            if !checkVertical(x, ny, arr) {
                return false
            }
        }
    }
    return true
}

func checkHorizontal(_ x: Int, _ y: Int, _ arr: [[String]]) -> Bool {
    for i in 0..<2 {
        let nx = x + dx[i]
        if nx >= 0, nx < n, !horizontalVisited[nx][y] {
            horizontalVisited[nx][y] = true
            if arr[nx][y] == "O" {
                return true
            }
            if arr[nx][y] == "S" {
                return false
            }
            if !checkHorizontal(nx, y, arr) {
                    return false
            }
        }
    }
    return true
}

func checkSafety(_ arr: [[String]]) -> Bool {
    for i in 0..<n {
        for j in 0..<n {
            if arr[i][j] == "T" {
                verticalVisited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
                horizontalVisited = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
                if !checkHorizontal(i, j, arr) || !checkVertical(i, j, arr) {
                    return false
                }
            }
        }
    }
    return true
}


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

func solution() -> Bool {
    var xArray = [(Int, Int)]()
    for i in 0..<n {
        for j in 0..<n {
            if map[i][j] == "X" {
                xArray.append((i, j))
            }
        }
    }
    let combinations = combination(xArray, 3)
    for combination in combinations {
        var temp = map
        for (x, y) in combination {
            temp[x][y] = "O"
        }
        if checkSafety(temp) {
            return true
        }
    }
    return false
}

print(solution() ? "YES" : "NO")

//5
//X S X X T
//T X S X X
//X X X X X
//X T X X X
//X X T X X
// -> YES

//4
//S S S T
//X X X X
//X X X X
//T T T X
// -> NO
