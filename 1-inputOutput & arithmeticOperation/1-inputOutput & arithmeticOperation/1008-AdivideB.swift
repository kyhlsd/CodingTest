//
//  1008-AdivideB.swift
//  1-inputOutput & arithmeticOperation
//
//  Created by 김영훈 on 7/15/24.
//

import Foundation

let arr = readLine()!.split(separator: " ").map{ Int(String($0))! }

let a = arr[0]
let b = arr[1]

print(a/b)
