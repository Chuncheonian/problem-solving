// 2022.04.25
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2696

import Foundation

var answer: String = ""

for _ in 1...Int(readLine()!)! {
    var arr = [[Int]]()
    let n = Int(readLine()!)!
    for _ in 1...(n / 10 + 1) {
        arr.append(readLine()!.split{ $0 == " " }.map{ Int(String($0))! })
    }

    var result: String = "\((n + 1) / 2)\n"
    var count: Int = 0
    var maxHeap = Heap<Int>(priorityFunction: >)
    var minHeap = Heap<Int>(priorityFunction: <)

    for (idx, elem) in arr.flatMap({ $0 }).enumerated() {
        if idx % 2 == 1 {
            minHeap.insert(elem)
        } else {
            maxHeap.insert(elem)
        }

        if !minHeap.isEmpty, !maxHeap.isEmpty, maxHeap.peek! > minHeap.peek! {
            let a = maxHeap.remove()!
            let b = minHeap.remove()!
            maxHeap.insert(b)
            minHeap.insert(a)
        }

        if (idx + 1) % 2 == 1 {
            result += "\(maxHeap.peek!) "
            count += 1

            if count % 10 == 0 {
                result += "\n"
            }
        }
    }
    answer += result + "\n"
}

print(answer)

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