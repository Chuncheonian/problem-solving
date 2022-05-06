// 2022.05.07
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1753

import Foundation

struct Heap<T> {
    private var elements: [T] = []
    private let priorityFunction: (T, T) -> Bool

    var isEmpty: Bool { return elements.isEmpty }

    var count: Int { return elements.count }

    var peek: T? { return elements.first }
    
    init(elements: [T] = [], priorityFunction: @escaping (T, T) -> Bool) {
        self.elements = elements
        self.priorityFunction = priorityFunction
    }

    func leftChildIndex(of index: Int) -> Int { return 2 * index + 1 }

    func rightChildIndex(of index: Int) -> Int { return 2 * index + 2 }

    func parentIndex(of index: Int) -> Int { return (index - 1) / 2 }

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
        var higherPriority = index
        let leftChildIndex = leftChildIndex(of: index)
        let rightChildIndex = rightChildIndex(of: index)

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

let ve = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
let k = Int(readLine()!)!

var edges = [[(Int, Int)]](repeating: [(Int, Int)](), count: ve[0] + 1)
var distances = [Int](repeating: Int.max, count: ve[0] + 1)
distances[k] = 0

for _ in 1...ve[1] {
    let uvw = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
    let (u, v, w) = (uvw[0], uvw[1], uvw[2])
    edges[u].append((v, w))
}

var priorityQueue: Heap<(Int, Int)> = .init(elements: [(k, 0)], priorityFunction: { $0.1 < $1.1 })

while priorityQueue.isEmpty == false {
    let current = priorityQueue.remove()!

    if distances[current.0] < current.1 { continue }

    for next in edges[current.0] {
        let distance = current.1 + next.1

        if distance < distances[next.0] {
            distances[next.0] = distance
            priorityQueue.insert((next.0, distance))
        }
    }
}

for d in distances[1...] {
    print(d == Int.max ? "INF" : d)  
}