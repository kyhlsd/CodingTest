//
//  12_08_implement.swift
//  BookExample
//
//  Created by 김영훈 on 3/18/25.
//

// page: 322
import Foundation

let inputs = readLine()!.split(separator: "")
var chars = [String]()
var sum = 0
var result = ""

for input in inputs {
    if input >= "A" && input <= "Z" {
        chars.append(String(input))
    } else if input >= "0" && input <= "9" {
        sum += Int(String(input))!
    }
}

chars.sort()

for char in chars {
    result += char
}
result += String(sum)

print(result)
