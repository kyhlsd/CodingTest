//
//  7_2_BinarySearch.swift
//  BookExample
//
//  Created by 김영훈 on 3/11/25.
//

// page: 197
import Foundation

func binarySearch<T: Comparable>(_ array: [T], _ target: T) -> Int? {
    var left = 0
    var right = array.count
    while left <= right {
        var mid = (left + right) / 2
        if array[mid] == target {
            return mid
        } else if target < array[mid] {
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    return nil
}

let n = Int(readLine()!)!
var totalArray = readLine()!.split(separator: " ").map { Int($0)! }
let m = Int(readLine()!)!
let queryArray = readLine()!.split(separator: " ").map { Int($0)! }

totalArray.sort(by: <)
for query in queryArray {
    if let hasDataIndex = binarySearch(totalArray, query) {
        print("yes", terminator: " ")
    } else {
        print("no", terminator: " ")
    }
}
