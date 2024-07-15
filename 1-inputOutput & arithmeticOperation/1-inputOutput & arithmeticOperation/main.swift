//
//  main.swift
//  1-inputOutput & arithmeticOperation
//
//  Created by 김영훈 on 7/15/24.
//

import Foundation

let num1 = readLine()!
let num2 = readLine()!

var arr = [Int]()

for index in num2.indices.reversed() {
    arr.append(num2[index].wholeNumberValue! * Int(num1)!)
}

arr.append(Int(num1)! * Int(num2)!)

for answer in arr {
    print(answer)
}
