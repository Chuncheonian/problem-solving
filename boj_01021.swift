// 2022.05.11
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/1021

let nm = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }
var searchArr = readLine()!.split{ $0 == " " }.map{ Int(String($0))! }

var deque: Deque<Int> = .init(Array(1...nm[0]))

var result = 0

for search in searchArr {
    if deque.front! == search {
        _ = deque.dequeue()
    } else {
        if deque.firstIndex(of: search)! <= (deque.count / 2) {
            while deque.front! != search {
                deque.enqueue(deque.dequeue()!)
                result += 1
            }
            _ = deque.dequeue()

        } else {
            while deque.front! != search {
                deque.enqueueFront(deque.dequeueBack()!)
                result += 1
            }
            _ = deque.dequeue()
        }
    }
}

print(result)

struct Deque<T: Equatable> {
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

    mutating func enqueueFront(_ element: T) {
        dequeueStack.append(element)
    }

    mutating func dequeue() -> T? {
        if dequeueStack.isEmpty {
            dequeueStack = enqueueStack.reversed()
            enqueueStack.removeAll()
        }
        return dequeueStack.popLast()
    }

    mutating func dequeueBack() -> T? {
        var value: T?
        if enqueueStack.isEmpty {
            dequeueStack.reverse()
            value = dequeueStack.popLast()
            dequeueStack.reverse()
        } else {
            value = enqueueStack.popLast()
        }
        return value
    }   

    mutating func removeAll() {
        enqueueStack.removeAll()
        dequeueStack.removeAll()
    }

    mutating func firstIndex(of element: T) -> Int? {
        if dequeueStack.isEmpty {
            return enqueueStack.firstIndex(of: element)
        }
        
        dequeueStack.reverse()

        if let index = dequeueStack.firstIndex(of: element) {
            dequeueStack.reverse()
            return .some(index)
        } else {
            dequeueStack.reverse()
            return .some(dequeueStack.count + enqueueStack.firstIndex(of: element)!)
        }
    }
}