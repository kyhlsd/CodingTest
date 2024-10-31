//
//  1018-RecolorChessboard.swift
//  12-BruteForce
//
//  Created by 김영훈 on 10/31/24.
//

import Foundation

let nm : [Int] = readLine()!.split(separator: " ").map { Int($0)!}
var chessBoard : [[Int]] = [[Int]]()

for _ in 0..<nm[0] {
    chessBoard.append(Array(readLine()!).map { $0 == "B" ? 1 : -1 })
}

var maxScore = 0
for i in 0...(nm[0] - 8) {
    for j in 0...(nm[1] - 8) {
        var sum = 0
        for k in stride(from: 0, to: 8, by: 2) {
            sum += chessBoard[i+k][j] + chessBoard[i+k][j+2] + chessBoard[i+k][j+4] + chessBoard[i+k][j+6]
        }
        for k in stride(from: 1, to: 8, by: 2) {
            sum += chessBoard[i+k][j+1] + chessBoard[i+k][j+3] + chessBoard[i+k][j+5] + chessBoard[i+k][j+7]
        }
        for k in stride(from: 0, to: 8, by: 2) {
            sum -= chessBoard[i+k][j+1] + chessBoard[i+k][j+3] + chessBoard[i+k][j+5] + chessBoard[i+k][j+7]
        }
        for k in stride(from: 1, to: 8, by: 2) {
            sum -= chessBoard[i+k][j] + chessBoard[i+k][j+2] + chessBoard[i+k][j+4] + chessBoard[i+k][j+6]
        }
        sum = abs(sum)
        if maxScore < sum {
            maxScore = sum
        }
    }
}

var answer = (64 - maxScore) / 2
print(answer)
