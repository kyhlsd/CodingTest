//
//  10810-putBalls.swift
//  4-oneDimensionalArray
//
//  Created by 김영훈 on 8/2/24.
//

import Foundation

var answer = ""
var array = [Int]()
let inputNM = readLine()!.split(separator: " ").map { Int($0) }

for _ in 0...inputNM[0]! {
    array.append(0)
}

for _ in 0..<inputNM[1]! {
    let inputBall = readLine()!.split(separator: " ").map { Int($0) }
    for i in inputBall[0]!...inputBall[1]! {
        array[i] = inputBall[2]!
    }
}

array.removeFirst()
for i in array {
    answer += "\(i) "
}
answer.removeLast()
print(answer)
