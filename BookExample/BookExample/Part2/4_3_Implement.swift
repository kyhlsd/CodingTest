//
//  4_3_Implement.swift
//  BookExample
//
//  Created by 김영훈 on 3/9/25.
//

// page: 118
import Foundation

let mapSizes: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
var positions: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
var maps = [[Int]]()
for _ in 0..<mapSizes[0] {
    maps.append(readLine()!.split(separator: " ").map { Int($0)! })
}

// case 나누는 것보다 배열로 dx = [1,0,-1,0] 이런 식으로 하는게 효과적

var keep = true
// 처음 위치한 곳 가본 곳 처리
maps[positions[1]][positions[0]] = 2

while keep {
    switch positions[2] {
    // 위쪽
    case 0:
        // 모두 가본 칸이거나 바다로 되어 있을 경우
        if maps[positions[1]+1][positions[0]] > 0 && maps[positions[1]-1][positions[0]] > 0 &&
            maps[positions[1]][positions[0]+1] > 0 &&
            maps[positions[1]][positions[0]-1] > 0 {
            // 뒤가 바다일 경우
            if maps[positions[1]-1][positions[0]] == 1 {
                keep = false
            } else {
                // 뒤가 바다가 아닐 경우 후진
                positions[1] -= 1
                break
            }
        }
        // 왼쪽이 안가본 칸일 경우
        if maps[positions[1]][positions[0]-1] == 0 {
            positions[0] -= 1
            maps[positions[1]][positions[0]] = 2
        }
        // 방향 회전
        positions[2] = 3
    // 오른쪽
    case 1:
        // 모두 가본 칸이거나 바다로 되어 있을 경우
        if maps[positions[1]+1][positions[0]] > 0 && maps[positions[1]-1][positions[0]] > 0 &&
            maps[positions[1]][positions[0]+1] > 0 &&
            maps[positions[1]][positions[0]-1] > 0 {
            // 뒤가 바다일 경우
            if maps[positions[1]][positions[0]-1] == 1 {
                keep = false
            } else {
                // 뒤가 바다가 아닐 경우 후진
                positions[0] -= 1
                break
            }
        }
        // 위쪽이 안가본 칸일 경우
        if maps[positions[1]+1][positions[0]] == 0 {
            positions[1] += 1
            maps[positions[1]][positions[0]] = 2
        }
        // 방향 회전
        positions[2] -= 1
    // 아래쪽
    case 2:
        // 모두 가본 칸이거나 바다로 되어 있을 경우
        if maps[positions[1]+1][positions[0]] > 0 && maps[positions[1]-1][positions[0]] > 0 &&
            maps[positions[1]][positions[0]+1] > 0 &&
            maps[positions[1]][positions[0]-1] > 0 {
            // 뒤가 바다일 경우
            if maps[positions[1]+1][positions[0]] == 1 {
                keep = false
            } else {
                // 뒤가 바다가 아닐 경우 후진
                positions[1] += 1
                break
            }
        }
        // 오른쪽이 안가본 칸일 경우
        if maps[positions[1]][positions[0]+1] == 0 {
            positions[0] += 1
            maps[positions[1]][positions[0]] = 2
        }
        // 방향 회전
        positions[2] -= 1
    // 왼쪽
    case 3:
        // 모두 가본 칸이거나 바다로 되어 있을 경우
        if maps[positions[1]+1][positions[0]] > 0 && maps[positions[1]-1][positions[0]] > 0 &&
            maps[positions[1]][positions[0]+1] > 0 &&
            maps[positions[1]][positions[0]-1] > 0 {
            // 뒤가 바다일 경우
            if maps[positions[1]][positions[0]+1] == 1 {
                keep = false
            } else {
                // 뒤가 바다가 아닐 경우 후진
                positions[0] -= 1
                break
            }
        }
        // 위쪽이 안가본 칸일 경우
        if maps[positions[1]+1][positions[0]] == 0 {
            positions[1] += 1
            maps[positions[1]][positions[0]] = 2
        }
        // 방향 회전
        positions[2] -= 1
    default:
        break
    }
}

var count = 0
for map in maps {
    for value in map {
        if value == 2 {
            count += 1
        }
    }
}

print(count)

// map
//1 1 1 1
//1 1 0 1
//1 0 0 1
//1 1 1 1

// inputs
//4 4
//1 1 0
//1 1 1 1
//1 0 0 1
//1 1 0 1
//1 1 1 1

