// 2022.03.22
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/11728

import Foundation

// https://gist.github.com/JCSooHwanCho/30be4b669321e7a135b84a1e9b075f88 참고
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
}

let fIO = FileIO()

let n = fIO.readInt()
let m = fIO.readInt()

var arr1 = [Int]()
arr1.reserveCapacity(n)
var arr2 = [Int]()
arr2.reserveCapacity(m)

for _ in 0..<n {
    arr1.append(fIO.readInt())
}

for _ in 0..<m {
    arr2.append(fIO.readInt())
}

print((arr1 + arr2).sorted().map{ String($0) }.joined(separator: " "))