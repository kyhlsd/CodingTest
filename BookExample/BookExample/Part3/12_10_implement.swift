//
//  12_10_implement.swift
//  BookExample
//
//  Created by 김영훈 on 3/19/25.
//

// page: 325
import Foundation

func solution(key: [[Int]], lock: [[Int]]) -> Bool {
    let m = key.count
    let n = lock.count
    var keyArray = key
    
    for _ in 0..<4 {
        for i in -m..<m {
            for j in -m..<m {
                var lockArray = lock
                for k in 0..<n {
                    for l in 0..<n {
                        if k+i >= 0 && l+j >= 0 && k+i < n && l+j < n && lockArray[k][l] == 0 {
                            lockArray[k][l] += keyArray[k+i][l+j]
                        }
                    }
                }
                if lockArray.allSatisfy({ $0.allSatisfy { $0 == 1 } }) {
                    return true
                }
            }
        }
        var newKeyArray = keyArray
        for i in 0..<m {
            for j in 0..<m {
                newKeyArray[i][j] = keyArray[m-1-j][i]
            }
        }
        keyArray = newKeyArray
    }
    return false
}

print (solution(key: [[0,0,0],
                      [1,0,0],
                      [0,1,1]],
                lock: [[1,1,1],
                       [1,1,0],
                       [1,0,1]]))
