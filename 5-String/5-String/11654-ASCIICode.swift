//
//  11654-ASCIICode.swift
//  5-String
//
//  Created by 김영훈 on 10/3/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map { String($0) }[0]
let char = Character(input)

print(char.asciiValue!)
