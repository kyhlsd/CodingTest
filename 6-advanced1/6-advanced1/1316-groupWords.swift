//
//  1316-groupWords.swift
//  6-advanced
//
//  Created by 김영훈 on 10/7/24.
//

import Foundation

let n = Int(readLine()!)!
var inputs = [[Character]]()

for _ in 0..<n {
    inputs.append(Array(readLine()!))
}

var count = 0
for word in inputs {
    var dict = [Character: Int]()
    var isGroupWord = true
    for i in 0..<word.count {
        if let duplicated = dict[word[i]], i - duplicated > 1 {
            isGroupWord = false
            break
        } else {
            dict[word[i]] = i
        }
    }
    if isGroupWord {
        count += 1
    }
}

print(count)
