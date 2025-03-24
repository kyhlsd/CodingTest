//
//  13_17_Implement.swift
//  BookExample
//
//  Created by 김영훈 on 3/24/25.
//

// page: 346
import Foundation

func isCollectString(_ s: String) -> Bool {
    let arr = s.split(separator: "")
    var queue = [String]()
    for value in arr {
        if value == "(" {
            queue.append(String(value))
        } else {
            if queue.isEmpty {
                return false
            } else {
                queue.removeLast()
            }
        }
    }
    return queue.isEmpty
}
func reverse(_ s: String) -> String {
    let arr = s.split(separator: "")
    var result = ""
    for value in arr {
        if value == "(" {
            result += ")"
        } else {
            result += "("
        }
    }
    return result
}

func solution(_ s: String) -> String {
    if s.count == 0 {
        return ""
    }
    if isCollectString(s) {
        return s
    }
    
    let arr = s.split(separator: "")
    var leftCount = 0
    var rightCount = 0
    var u = ""
    var v = s
    for value in arr {
        if value == "(" {
            leftCount += 1
        } else {
            rightCount += 1
        }
        u += String(value)
        v.removeFirst()
        if leftCount != 0, rightCount != 0, leftCount == rightCount {
            break
        }
    }
    
    let collectV = solution(v)
    if isCollectString(u) {
        return u + collectV
    } else {
        u.removeFirst()
        u.removeLast()
        return "(" + collectV + ")" + reverse(u)
    }
}

print(solution(")("))
print(solution("(()())()"))
print(solution("()))((()"))
