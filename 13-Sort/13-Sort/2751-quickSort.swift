//
//  2751-SortNumbers.swift
//  13-Sort
//
//  Created by 김영훈 on 11/18/24.
//

import Foundation

let n = Int(readLine()!)!
var array = [Int]()

for _ in 0..<n {
    array.append(Int(readLine()!)!)
}

func partition(arr: inout [Int], p: Int, r: Int) -> Int {
    var low, high: Int
    var pivot = arr[p]
    
    low = p + 1
    high = r
    
    while(low <= high) {
        while(low <= high && arr[low] < pivot) {
            low += 1
        }
        while(low <= high && arr[high] > pivot) {
            high -= 1
        }
        
        if low <= high {
            (arr[low], arr[high]) = (arr[high], arr[low])
        }
    }
    
    (arr[p], arr[high]) = (arr[high], arr[p])
    
    return high
}

func quickSort(arr: inout [Int], left: Int, right: Int) {
    if left < right {
        let pivot = partition(arr: &arr, p: left, r: right)
        
        quickSort(arr: &arr, left: left, right: pivot - 1)
        quickSort(arr: &arr, left: pivot + 1, right: right)
    }
}

quickSort(arr: &array, left: 0, right: array.count - 1)

for number in array {
    print(number)
}

