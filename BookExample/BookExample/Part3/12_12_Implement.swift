//
//  12_12_Implement.swift
//  BookExample
//
//  Created by 김영훈 on 3/20/25.
//

// page: 329
import Foundation

func solution(_ buildFrame: [[Int]]) -> [[Int]] {
    var result = [[Int]]()
    
    func checkIsValid() -> Bool {
        for frame in result {
            let (x,y,a) = (frame[0],frame[1],frame[2])
            // 기둥
            if a == 0 {
                if y == 0 || result.contains([x-1, y, 1]) || result.contains([x, y, 1]) || result.contains([x, y-1, 0]) {
                    continue
                }
                return false
            } else { // 보
                if result.contains([x, y-1, 0]) || result.contains([x+1, y-1, 0]) || (result.contains([x-1, y, 1]) && result.contains([x+1, y, 1])) {
                    continue
                }
                return false
            }
        }
        return true
    }
    
    for frame in buildFrame {
        let x = frame[0], y = frame[1], a = frame[2], b = frame[3]
        if b == 0 {
            result.removeAll(where: { $0 == [x, y, a] })
            if !checkIsValid() {
                result.append([x, y, a])
            }
        } else {
            result.append([x, y, a])
            if !checkIsValid() {
                result.removeAll(where: { $0 == [x, y, a] })
            }
        }
    }
    
    result.sort {
        if $0[0] != $1[0] {
            return $0[0] < $1[0]
        } else {
            return $0[1] < $1[1]
        }
    }
    
    return result
}


//[x, y, 0:기둥 1:보, 0:삭제 1: 설치]
print(solution([[1,0,0,1],
               [1,1,1,1],
               [2,1,0,1],
               [2,2,1,1],
               [5,0,0,1],
               [5,1,0,1],
               [4,2,1,1],
               [3,2,1,1]]))
