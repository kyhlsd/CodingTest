//
//  24267-Algorithm6.swift
//  11-TimeComplexity
//
//  Created by 김영훈 on 10/30/24.
//

import Foundation

let n = Int(readLine()!)!
var sum = 0

for i in 1...n-2 {
    sum += (i * (i + 1)) / 2
}
//if n > 2 {
//    for i in 1...n-2 {
//        sum += (i * (i + 1)) / 2
//    }
//}

print(sum)
print("3")
