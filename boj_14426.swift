// 2022.03.30
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/14426

// Swift로 풀면 시간초과 뜸...

import Foundation

final class FileIO {
    private var buffer:[UInt8]
    private var index: Int

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)]
        index = 0
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer.withUnsafeBufferPointer { $0[index] }
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10
            || now == 32 { now = read() }
        if now == 45{ isPositive.toggle(); now = read() }
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> String {
        var now = read()

        while now == 10 || now == 32 { now = read() }
        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
    }
}

let fIO = FileIO()
let nCnt = fIO.readInt()
let mCnt = fIO.readInt()

var nArr = [String](repeating: "", count: nCnt)

for i in 0..<nCnt {
    nArr[i] = fIO.readString()
}

var result = 0

for _ in 1...mCnt {
    let s = fIO.readString()

    for i in 0..<nCnt {
        if nArr[i].hasPrefix(s) {
            result += 1
            break
        }
    }
}

print(result)

// 빠른 입출력 제외
// let nm = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }

// var nArr = [String]()
// nArr.reserveCapacity(nm[0])

// for _ in 1...nm[0] {
//     nArr.append(readLine()!)
// }

// var result = 0

// for _ in 1...nm[1] {
//     let s = readLine()!

//     for n in nArr {
//         if n.hasPrefix(s) {
//             result += 1
//             break
//         }
//     }
// }
// print(result)