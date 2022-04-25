// 2022.04.25
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1655

import Foundation

let fIO = FileIO()
var maxHeap = Heap<Int>(priorityFunction: >)
var minHeap = Heap<Int>(priorityFunction: <)
var answer: String = ""

for i in 1...fIO.readInt() {
    let new = fIO.readInt()
    
    if i % 2 == 1 {
        maxHeap.insert(new)
    } else {
        minHeap.insert(new)
    }

    if maxHeap.isEmpty == false, minHeap.isEmpty == false, maxHeap.peek! > minHeap.peek! {
        let a = maxHeap.remove()!
        let b = minHeap.remove()!
        maxHeap.insert(b)
        minHeap.insert(a)
    }
    answer += "\(maxHeap.peek!)\n"
}
print(answer)

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

struct Heap<T: Comparable> {    
    private var elements: [T] = []

    private let priorityFunction: (T, T) -> Bool
    
    var isEmpty: Bool {
        return elements.isEmpty
    }

    var count: Int {
        return elements.count
    }

    var peek: T? {
        return elements.first
    }
    
    init(elements: [T] = [], priorityFunction: @escaping (T, T) -> Bool) {
        self.elements = elements
        self.priorityFunction = priorityFunction
    }
    
    func leftChildIndex(of index: Int) -> Int {
        return 2 * index + 1
    }

    func rightChildIndex(of index: Int) -> Int {
        return 2 * index + 2
    }

    func parentIndex(of index: Int) -> Int {
        return (index - 1) / 2
    }

    mutating func insert(_ node: T) {
        elements.append(node)
        swimUp(from: elements.endIndex - 1)
    }

    mutating func swimUp(from index: Int) {
        var index = index

        while index > 0, priorityFunction(elements[index], elements[parentIndex(of: index)]) {
            elements.swapAt(index, parentIndex(of: index))
            index = parentIndex(of: index)
        }
    }

    mutating func remove() -> T? {
        if elements.isEmpty { return nil }
        
        elements.swapAt(0, elements.endIndex - 1)
        let deleted = elements.removeLast()
        diveDown(from: 0)
        
        return deleted
    }

    mutating func diveDown(from index: Int) {
        var higherPriority: Int = index
        let leftChildIndex: Int = leftChildIndex(of: index)
        let rightChildIndex: Int = rightChildIndex(of: index)
        
        if leftChildIndex < elements.endIndex, priorityFunction(elements[leftChildIndex], elements[higherPriority]) {
            higherPriority = leftChildIndex
        }

        if rightChildIndex < elements.endIndex, priorityFunction(elements[rightChildIndex], elements[higherPriority]) {
            higherPriority = rightChildIndex
        }
        
        if higherPriority == index { return }
        
        elements.swapAt(higherPriority, index)
        diveDown(from: higherPriority)
    }
}