//
//  12_9_Implement.swift
//  BookExample
//
//  Created by 김영훈 on 3/19/25.
//

import Foundation

// page: 323
func solution(s: String) -> Int {
    let len = s.count
    var result = len
    
    for step in 1...len / 2 {
        var compressed = ""
        var prev = s[s.index(s.startIndex, offsetBy: 0)..<s.index(s.startIndex, offsetBy: step)]
        var count = 1
        
        for j in stride(from: step, to: len, by: step) {
            let endIndex = j + step > len ? len : j + step
            if prev == s[s.index(s.startIndex, offsetBy: j)..<s.index(s.startIndex, offsetBy: endIndex)] {
                count += 1
            } else {
                if count >= 2 {
                    compressed += String(count) + prev
                } else {
                    compressed += prev
                }
                prev = s[s.index(s.startIndex, offsetBy: j)..<s.index(s.startIndex, offsetBy: endIndex)]
                count = 1
            }
        }
        if count >= 2 {
            compressed += String(count) + prev
        } else {
            compressed += prev
        }
        result = min(result, compressed.count)
    }
    return result
}

print(solution(s: "aabbaccc"))
print(solution(s: "ababcdcdababcdcd"))
