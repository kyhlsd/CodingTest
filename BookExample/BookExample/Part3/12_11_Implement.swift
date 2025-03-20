//
//  12_11_Implement.swift
//  BookExample
//
//  Created by 김영훈 on 3/20/25.
//

// page: 327
import Foundation

let n = Int(readLine()!)!
let k = Int(readLine()!)!

var apples = [[Int]]()
for _ in 0..<k {
    apples.append(readLine()!.split(separator: " ").map { Int($0)! })
}

let l = Int(readLine()!)!
var moves = [(Int, String)]()
for _ in 0..<l {
    let move = readLine()!.split(separator: " ")
    moves.append((Int(move[0])!, String(move[1])))
}

var map = [[Int]](repeating: [Int](repeating: 0, count: n+1), count: n+1)
for apple in apples {
    map[apple[1]][apple[0]] = 1
}

var direction = 0
let dx = [1, 0, -1, 0]
let dy = [0, 1, 0, -1]
var headX = 1
var headY = 1
var time = 0
var moveIndex = 0
var queue = [(Int, Int)]()
queue.append((1, 1))

while true {
    time += 1

    headX += dx[direction]
    headY += dy[direction]
    
    if headX < 1 || headY < 1 || headX > n || headY > n {
        break
    }
    
    let tail = queue.first!
    queue.removeFirst()
    if queue.contains(where: { $0 == (headX, headY) }) {
        break
    }
    
    queue.append((headX, headY))
    
    if map[headY][headX] == 1 {
        map[headY][headX] = 0
        queue = [tail] + queue
    }
    
    if time == moves[moveIndex].0 {
        if moves[moveIndex].1 == "L" {
            direction -= 1
            if direction < 0 {
                direction = 3
            }
        } else {
            direction += 1
            if direction > 3 {
                direction = 0
            }
        }
        moveIndex += 1
    }
}

print(time)

//0 0 0 0 0 0
//0 0 0 0 0 0
//0 0 0 0 1 0
//0 0 1 0 0 0
//0 1 0 0 0 0
//0 0 0 0 0 0

//6
//3
//3 4
//2 5
//5 3
//3
//3 D
//15 L
//17 D
