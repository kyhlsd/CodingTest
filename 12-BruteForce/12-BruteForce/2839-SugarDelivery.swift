//
//  2839-.swift
//  12-BruteForce
//
//  Created by 김영훈 on 10/31/24.
//

import Foundation

let n = Int(readLine()!)!
var minCount = 9999

for i in 0...n/3 {
    for j in 0...n/5 {
        if 3 * i + 5 * j == n {
            minCount = min(minCount, i + j)
        }
    }
}
if minCount == 9999 {
    print("-1")
} else {
    print(minCount)
}
