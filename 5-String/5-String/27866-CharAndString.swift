//
//  27866-CharAndString.swift
//  5-String
//
//  Created by 김영훈 on 10/3/24.
//

import Foundation

let inputString = readLine()!.split(separator: " ").map { String($0) }[0]
let i = readLine()!.split(separator: " ").map { Int($0) }[0]!


let index = inputString.index(inputString.startIndex, offsetBy: i-1)
print(inputString[index])
