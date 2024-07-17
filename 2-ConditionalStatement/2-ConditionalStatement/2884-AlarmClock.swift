//
//  2884-AlarmClock.swift
//  2-ConditionalStatement
//
//  Created by 김영훈 on 7/17/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var hour = input[0]
var minute = input[1]

if minute < 45 {
    minute += 15
    if hour == 0 {
        hour = 23
    } else {
        hour -= 1
    }
} else {
    minute -= 45
}

print("\(hour) \(minute)")
