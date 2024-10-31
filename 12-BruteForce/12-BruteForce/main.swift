//
//  main.swift
//  12-BruteForce
//
//  Created by 김영훈 on 10/31/24.
//

import Foundation

func findDisassemble(n: Int) -> Int {
    let stringN = String(n)
    
    for i in 1...n {
        var digits = [Int]()
        var number = i
        for j in (0..<i.description.count).reversed() {
            digits.append(number / Int(pow(10, Double(j))))
            number = number % Int(pow(10, Double(j)))
        }
        var sum = i
        for digit in digits {
            sum += digit
        }
        if sum == n {
            return i
        }
    }
    return 0
}

let n = Int(readLine()!)!
let answer = findDisassemble(n: n)
print(answer)
