//
//  11653-PrimeFactorization.swift
//  9-Factors&Multiples&Decimals
//
//  Created by 김영훈 on 10/17/24.
//

import Foundation

import Foundation

var n = Int(readLine()!)!
//var root = sqrt(Double(n))
//var maxNumber = Int(floor(root))

//var going = true
//while going {
//    if maxNumber < 2 {
//        print(n)
//        going = false
//    } else {
//        for i in 2...maxNumber {
//            if n % i == 0 {
//                print(i)
//                n /= i
//                root = sqrt(Double(n))
//                maxNumber = Int(floor(root))
//                break
//            }
//            if i == maxNumber {
//                print(n)
//                going = false
//            }
//        }
//    }
//}

var i = 2
while i * i <= n {
    while n % i == 0 {
        print(i)
        n /= i
    }
    i += 1
}
if n > 1 {
    print(n)
}
