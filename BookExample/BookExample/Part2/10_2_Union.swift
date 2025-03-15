//
//  10_2_Union.swift
//  BookExample
//
//  Created by 김영훈 on 3/15/25.
//

// page: 298
import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
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
        parents[x] = parents[y]
    } else {
        parents[y] = parents[x]
    }
}

var inputs = [[Int]]()
for _ in 0..<m {
    inputs.append(readLine()!.split(separator: " ").map { Int($0)! })
}

for input in inputs {
    if input[0] == 0 {
        unionParent(input[1], input[2])
    } else if input[0] == 1 {
        if findParent(input[1]) == findParent(input[2]) {
            print("YES")
        } else {
            print("NO")
        }
    }
}
