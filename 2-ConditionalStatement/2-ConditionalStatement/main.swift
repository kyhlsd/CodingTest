//
//  main.swift
//  2-ConditionalStatement
//
//  Created by 김영훈 on 7/17/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

var numCountDict = [Int : Int]()

for num in input {
    if numCountDict.keys.contains(num) {
        numCountDict[num]! += 1
    } else {
        numCountDict[num] = 1
    }
}

var price = 0
let maxCount = numCountDict.values.max()
let commonNum = numCountDict.first(where: { $0.value == maxCount})!.key

switch maxCount {
case 1 : price = numCountDict.keys.max()! * 100
case 2 : price = 1000 + commonNum * 100
case 3 : price = 10000 + commonNum * 1000
default : print("Error")
}

print(price)
