// 2022.04.24
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1715

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

    var peek: T? {
        return elements.first
    }
    
    init(elements: [T] = [], priorityFunction: @escaping (T, T) -> Bool) {
        self.elements = elements
        self.priorityFunction = priorityFunction
        
        if isEmpty == false {
            buildHeap()
        }
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

    /// 새로운 데이터를 Heap의 마지막 데이터에 삽입후, 부모 데이터들과 교환
    mutating func insert(_ node: T) {
        elements.append(node)               // O(1)
        swimUp(from: elements.endIndex - 1) // O(logN)
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
        
        elements.swapAt(0, elements.endIndex - 1)  // 루트노드와 마지막노드와 Swap
        let deleted = elements.removeLast()
        diveDown(from: 0)
        
        return deleted
    }

    mutating func diveDown(from index: Int) {
        var higherPriority: Int = index
        let leftChildIndex: Int = leftChildIndex(of: index)
        let rightChildIndex: Int = rightChildIndex(of: index)
        
        // 왼쪽 자식 노드가 더 우선순위가 높을 때
        if leftChildIndex < elements.endIndex, priorityFunction(elements[leftChildIndex], elements[higherPriority]) {
            higherPriority = leftChildIndex
        }

        // 오른쪽 자식 노드가 더 우선순위가 높을 때
        if rightChildIndex < elements.endIndex, priorityFunction(elements[rightChildIndex], elements[higherPriority]) {
            higherPriority = rightChildIndex
        }
        
        // 교환이 필요 없는 경우
        if higherPriority == index { return }
        
        // 교환 후 서브트리로 이동
        elements.swapAt(higherPriority, index)
        diveDown(from: higherPriority)
    }
    
    mutating func buildHeap() {
        for index in stride(from: count / 2, through: 0, by: -1) {
            diveDown(from: index)
        }
    }
}

var minHeap = Heap<Int>(priorityFunction: <)

for _ in 1...Int(readLine()!)! {
    minHeap.insert(Int(readLine()!)!)
}

var result: Int = 0

while minHeap.count > 1 {
    let new = minHeap.remove()! + minHeap.remove()!
    result += new
    minHeap.insert(new)
}

print(result)