//
//  12_14_Implement.swift
//  BookExample
//
//  Created by 김영훈 on 3/21/25.
//

// page: 335
import Foundation

func permutations<T>(_ array: [T]) -> [[T]] {
    guard array.count > 1 else { return [array] }
    
    var result: [[T]] = []
    
    for (index, element) in array.enumerated() {
        var remaining = array
        remaining.remove(at: index)
        
        for perm in permutations(remaining) {
            result.append([element] + perm)
        }
    }
    
    return result
}

func solution(_ n: Int, _ weak: [Int], _ dist: [Int]) -> Int {
    var weak = weak
    let length = weak.count
    for i in 0..<length {
        weak.append(weak[i] + n)
    }
    var answer = dist.count
    for start in 0..<length {
        for friends in permutations(dist) {
            var count = 1
            var position = weak[start] + friends[count - 1]
            for index in start..<start + length {
                if position < weak[index] {
                    count += 1
                    if count > dist.count {
                        break
                    }
                    position = weak[index] + friends[count - 1]
                }
            }
            answer = min(answer, count)
        }
    }
    if answer > dist.count {
        return -1
    }
    return answer
}

print(solution(12, [1, 5, 6, 10], [1, 2, 3, 4]))
print(solution(12, [1, 3, 4, 9, 10], [3, 5, 7]))
