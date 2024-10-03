//
//  2908-CompareReversed.swift
//  5-String
//
//  Created by 김영훈 on 10/3/24.
//

import Foundation

let input = Array(readLine()!.split(separator: " "))
let firstNumString = String(input[0].reversed())
let secondNumString = String(input[1].reversed())

if Int(firstNumString)! > Int(secondNumString)! {
    print(firstNumString)
} else {
    print(secondNumString)
}
