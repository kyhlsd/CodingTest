//
//  12_07_implement.swift
//  BookExample
//
//  Created by 김영훈 on 3/18/25.
//

// page: 321
import Foundation

let inputs = readLine()!.split(separator: "").map { Int($0)! }

var leftHalf = 0
var rightHalf = 0

for i in 0..<inputs.count/2 {
    leftHalf += inputs[i]
}
for j in inputs.count/2..<inputs.count {
    rightHalf += inputs[j]
}

if leftHalf == rightHalf {
    print("LUCKY")
} else {
    print("READY")
}
