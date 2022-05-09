// 2022.05.09
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/18258

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

    @inline(__always) func readString() -> Int {
        var str = 0
        var now = read()

        while now == 10 || now == 32 { now = read() }

        while now != 10, now != 32, now != 0 { 
            str += Int(now)
            now = read()
        }

        return str
    }
}

struct Queue<T> {
    private var enqueueStack: [T]
    private var dequeueStack: [T] = []

    var count: Int {
        return enqueueStack.count + dequeueStack.count
    }

    var isEmpty: Bool {
        return enqueueStack.isEmpty && dequeueStack.isEmpty
    }

    var front: T? {
        return dequeueStack.isEmpty ? enqueueStack.first : dequeueStack.last
    }

    var back: T? {
        return enqueueStack.isEmpty ? dequeueStack.first : enqueueStack.last
    }

    init(_ queue: [T] = []) {
        self.enqueueStack = queue
    }

    mutating func enqueue(_ element: T) {
        enqueueStack.append(element)
    }

    mutating func dequeue() -> T? {
        if dequeueStack.isEmpty {
            dequeueStack = enqueueStack.reversed()
            enqueueStack.removeAll()
        }
        return dequeueStack.popLast()
    }
}

let fIO = FileIO()
var queue = Queue<Int>()
var res = ""

for _ in 1...fIO.readInt() {
    let c = fIO.readString()

    if c == 448 { queue.enqueue(fIO.readInt()) }
    else if c == 335 { res += queue.isEmpty ? "-1\n" : "\(queue.dequeue()!)\n"  }
    else if c == 443 { res += "\(queue.count)\n" }
    else if c == 559 { res += queue.isEmpty ? "1\n" : "0\n" }
    else if c == 553 { res += queue.isEmpty ? "-1\n" : "\(queue.front!)\n" }
    else if c == 401 { res += queue.isEmpty ? "-1\n" : "\(queue.back!)\n" }
}

print(res)