// 2022.04.24
// Dongyoung Kwon (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/11279

import Foundation

struct Heap<T: Comparable> {
    private var elements: [T] = []

    /// > : Max Heap
    /// < : Min Heap
    private let priorityFunction: (T, T) -> Bool
    
    var isEmpty: Bool {
        return elements.isEmpty
    }

    var count: Int {
        return elements.count
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
        let leftIndex: Int = leftChildIndex(of: index)
        let rightIndex: Int = rightChildIndex(of: index)
        
        if leftIndex < elements.endIndex, priorityFunction(elements[leftIndex], elements[higherPriority]) {
            higherPriority = leftIndex
        }

        if rightIndex < elements.endIndex, priorityFunction(elements[rightIndex], elements[higherPriority]) {
            higherPriority = rightIndex
        }
        
        if higherPriority == index { return }
        
        elements.swapAt(higherPriority, index)
        diveDown(from: higherPriority)
    }
}

var maxHeap = Heap<Int>(priorityFunction: >)

for _ in 1...Int(readLine()!)! {
    let x = Int(readLine()!)!

    if x == 0 {
        print(maxHeap.isEmpty ? 0 : maxHeap.remove()!)
    } else {
        maxHeap.insert(x)
    }
}