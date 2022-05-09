// 2022.05.09
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/2164

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

var queue = Queue<Int>(Array(1...Int(readLine()!)!))

while queue.count > 2 {
    _ = queue.dequeue()
    queue.enqueue(queue.dequeue()!)
}

print(queue.back!)