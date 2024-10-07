//
//  2941-CroatiaAlphabet.swift
//  6-advanced
//
//  Created by 김영훈 on 10/7/24.
//

import Foundation

let input = Array(readLine()!)

var count = input.count

for i in 0..<(input.count - 1) {
    switch input[i] {
    case 'c':
        if input[i+1] == '=' || input[i+1] == '-' {
            count -= 1
        }
    case 'd':
        if input[i+1] == '-' {
            count -= 1
        } else if i < input.count - 2 {
            if input[i+1] == 'z' && input[i+2] == '=' {
                count -= 1
            }
        }
    case 'l':
        if input[i+1] == 'j' {
            count -= 1
        }
    case 'n':
        if input[i+1] == 'j' {
            count -= 1
        }
    case 's':
        if input[i+1] == '=' {
            count -= 1
        }
    case 'z':
        if input[i+1] == '=' {
            count -= 1
        }
    default: break
    }
}

print(count)

