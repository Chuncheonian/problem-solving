// 2022.05.09
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://www.acmicpc.net/problem/10866

struct Deque<T> {
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
}

var deque = Deque<Int>()

for _ in 1...Int(readLine()!)! {
    let c = readLine()!.split{$0==" "}

    if c[0]=="push_front" { deque.enqueueFront(Int(c[1])!) }
    if c[0]=="push_back" { deque.enqueue(Int(c[1])!) }
    if c[0]=="pop_front" { print(deque.isEmpty ? -1 : deque.dequeue()!) }
    if c[0]=="pop_back" { print(deque.isEmpty ? -1 : deque.dequeueBack()!) }
    if c[0]=="size" { print(deque.count) }
    if c[0]=="empty" { print(deque.isEmpty ? 1 : 0) }
    if c[0]=="front" { print(deque.isEmpty ? -1 : deque.front!) }
    if c[0]=="back" { print(deque.isEmpty ? -1 : deque.back!) }
}