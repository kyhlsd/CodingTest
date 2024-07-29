//
//  main.swift
//  3-Loop
//
//  Created by 김영훈 on 7/29/24.
//

import Foundation

// 시간 초과
//let count: Int = Int(readLine()!)!
//var arr = [Int]()
//
//for i in 0..<count {
//    let nums = readLine()!.split(separator: " ").map{ Int(String($0))! }
//    arr.append(nums[0] + nums[1])
//}
//
//for i in 0..<count {
//    print(arr[i])
//}

// fread로 여러 바이트를 한번에 읽고, 정수를 읽어야 할 때마다 미리 읽어둔 문자열로부터 정수를 파싱하면 됩니다. 꽤 복잡한 방법이지만, 이것보다 간단한 방법은 아직 찾지 못했습니다.
// 참고 : https://m.blog.naver.com/gustn3964/222258493870

final class FileIO {
    private let buffer:[UInt8]
    private var index: Int = 0

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        
        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer[index]
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> String {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시

        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
    }

    @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시

        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return Array(buffer[beginIndex..<(index-1)])
    }
}

var answer = ""

let file = FileIO()

let n = file.readInt()
for _ in 0..<n {
    let a = file.readInt(), b = file.readInt()
    answer += "\(a + b)\n"
}

print(answer)
