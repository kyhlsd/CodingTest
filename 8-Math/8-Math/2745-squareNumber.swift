//
//  2745-squareNumber.swift
//  8-Math
//
//  Created by 김영훈 on 10/16/24.
//

import Foundation

let input = Array(readLine()!.split(separator: " "))
let n = Array(input[0].map { Int($0.asciiValue! < 65 ? $0.asciiValue! - 48 : $0.asciiValue! - 55) })
let b = Int(input[1])!

var answer = 0
var power = 1

for i in (0..<n.count).reversed() {
    answer += n[i] * power
    power *= b
}

print(answer)
