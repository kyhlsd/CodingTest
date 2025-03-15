//
//  10_3_Kruskal.swift
//  BookExample
//
//  Created by 김영훈 on 3/15/25.
//

// page: 300
import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
var inputs = [(Int, Int, Int)]()
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    inputs.append((input[0], input[1], input[2]))
}
var parents = [Int]()
for i in 0...n {
    parents.append(i)
}

func findParent(_ x: Int) -> Int {
    if parents[x] == x {
        return x
    } else {
        parents[x] = findParent(parents[x])
        return parents[x]
    }
}

func unionParent(_ x: Int, _ y: Int) {
    let xRoot = findParent(x)
    let yRoot = findParent(y)
    if xRoot > yRoot {
        parents[xRoot] = yRoot
    } else {
        parents[yRoot] = xRoot
    }
}

inputs.sort { $0.2 < $1.2 }
var cost = [Int]()
for input in inputs {
    if findParent(input.0) != findParent(input.1) {
        unionParent(input.0, input.1)
        cost.append(input.2)
    }
}

let result = cost.reduce(0, +) - cost.max()!
print(result)
