//
//  8_5_DynamicProgramming.swift
//  BookExample
//
//  Created by 김영훈 on 3/12/25.
//

//page: 226
import Foundation

let inputs = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (inputs[0], inputs[1])
var moneys = [Int]()
for _ in 0..<n {
    moneys.append(Int(readLine()!)!)
}

var sums = [Int](repeating: 10001, count: m+1)
sums[0] = 0

for i in 0..<n {
    if moneys[i] < m {
        break
    }
    if moneys[i] == m {
        sums[moneys[i]] = 1
        break
    }
    for j in moneys[i]...m {
        if sums[j - moneys[i]] != 10001 {
            sums[j] = min(sums[j - moneys[i]] + 1, sums[j])
        }
    }
}

if sums[m] == 10001 {
    print(-1)
} else {
    print(sums[m])
}
