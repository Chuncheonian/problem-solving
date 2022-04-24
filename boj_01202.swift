// 2022.04.24
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1202

import Foundation

let nk = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
var jewelryArr = [(Int, Int)]()
var bagArr = [Int]()
var result = 0

for _ in 1...nk[0] {
    let n = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
    jewelryArr.append((n[0], n[1]))
}

for _ in 1...nk[1] {
    bagArr.append(Int(readLine()!)!)
}

jewelryArr.sort { $0.0 < $1.0 }
bagArr.sort(by: <)

var heap = Heap<Int>(priorityFunction: >)
var index = 0

for bag in bagArr {
    while index < jewelryArr.count && jewelryArr[index].0 <= bag {
        heap.insert(jewelryArr[index].1)
        index += 1
    }
    if !heap.isEmpty {
        result += heap.remove()!
    }
}

print(result)

struct Heap<T: Comparable> {
    private var elements: [T] = []
    private let priorityFunction: (T, T) -> Bool
    var isEmpty: Bool { return elements.isEmpty }
    var count: Int { return elements.count }
    
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