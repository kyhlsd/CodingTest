//
//  24313-AsymptatoticNotation1.swift
//  11-TimeComplexity
//
//  Created by 김영훈 on 10/30/24.
//

import Foundation

let a : [Int] = readLine()!.split(separator: " ").map { Int($0)!}
let c = Int(readLine()!)!
let n = Int(readLine()!)!

if a[0] * n + a[1] <= c * n && a[0] <= c {
    print("1")
} else {
    print("0")
}
