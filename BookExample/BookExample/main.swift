//
//  main.swift
//  BookExample
//
//  Created by 김영훈 on 3/7/25.
//

import Foundation

let inputs = Array(readLine()!.split(separator: " ").map{ Int($0)!} )
let n = inputs[0]
let k = inputs[1]

var count = 0
var i = 1
while i*k <= n {
    i *= k
    count += 1
}
count += n-i

print(count)
