//
//  9506-SumOfDivisors.swift
//  9-Factors&Multiples&Decimals
//
//  Created by 김영훈 on 10/17/24.
//

import Foundation

var n = Double(readLine()!)!
var inputs = [Double]()

while n != -1 {
    inputs.append(n)
    n = Double(readLine()!)!
}

for input in inputs {
    let root = sqrt(input)
    let maxNumber = Int(floor(root))
    var divisors = [Int]()
    for i in 1...maxNumber {
        if Int(input) % i == 0 {
            divisors.append(i)
            divisors.append(Int(input) / i)
        }
    }
    divisors.sort()
    divisors.removeLast()
    if root == Double(maxNumber) {
        divisors.remove(at: divisors.count / 2)
    }
    var sumOfDivisors = 0
    var answer = "\(Int(input)) ="
    for divisor in divisors {
        sumOfDivisors += divisor
        answer += " \(divisor) +"
    }
    answer.removeLast(2)
    if Int(input) != sumOfDivisors {
        answer = "\(Int(input)) is NOT perfect."
    }
    print(answer)
}
