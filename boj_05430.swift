// 2022.05.30
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://www.acmicpc.net/problem/5430

import Foundation

let T = Int(readLine()!)!
for _ in 0..<T {
    let p = readLine()!
    let n = Int(readLine()!)!
    let arr = readLine()!.components(separatedBy: ["[", ",", "]"]).filter{ !$0.isEmpty }.map{Int(String($0))!}
    
    var head = 0, tail = n-1
    var isReversed = false
    var isError = false
    
    for cmd in p {
        if cmd == "D" {
            if head > tail {
                isError = true
                break
            }
            if isReversed {
                tail -= 1
            } else {
                head += 1
            }
        } else {
            isReversed.toggle()
        }
    }
    
    if isError {
        print("error")
    } else if head > tail {
        print("[]")
    } else {
        let ans = arr[head...tail].map{String($0)}.joined(separator: ",")
        let reverseAns = arr[head...tail].reversed().map{String($0)}.joined(separator: ",")
        if isReversed {
            print("["+reverseAns+"]")
        } else {
            print("["+ans+"]")
        }
    }
}

// 시간 초과
// struct Queue<T> {
//     private var enqueueStack: [T]
//     private var dequeueStack: [T] = []

//     var count: Int {
//         return enqueueStack.count + dequeueStack.count
//     }

//     var isEmpty: Bool {
//         return enqueueStack.isEmpty && dequeueStack.isEmpty
//     }

//     var front: T? {
//         return dequeueStack.isEmpty ? enqueueStack.first : dequeueStack.last
//     }

//     var back: T? {
//         return enqueueStack.isEmpty ? dequeueStack.first : enqueueStack.last
//     }

//     init(_ queue: [T] = []) {
//         self.enqueueStack = queue
//     }

//     func callAsFunction() -> [T] {
//         return dequeueStack.isEmpty ? enqueueStack : dequeueStack.reversed() + enqueueStack
//     }

//     mutating func enqueue(_ element: T) {
//         enqueueStack.append(element)
//     }

//     mutating func dequeue() -> T? {
//         if dequeueStack.isEmpty {
//             dequeueStack = enqueueStack.reversed()
//             enqueueStack.removeAll()
//         }
//         return dequeueStack.popLast()
//     }
    
//     mutating func reverse() {
//         enqueueStack.reverse()

//         if !dequeueStack.isEmpty {
//             enqueueStack += dequeueStack.reversed()
//             dequeueStack.removeAll()
//         }
//     }
// }

// var answer =  ""

// for _ in 1...Int(readLine()!)! {
//     let commands = readLine()!
//     _ = readLine()
//     var isError = false
//     var queue: Queue<String> = .init(readLine()!.components(separatedBy: ["[", ",", "]"]).filter{ !$0.isEmpty })

//     for c in commands {
//         if c == "R" {
//             queue.reverse()
//         } else {
//             if queue.isEmpty {
//                 isError.toggle()
//                 break
//             }
//             _ = queue.dequeue()
//         }
//     }
//     answer += isError ? "error\n" : "[" + queue().joined(separator: ",") + "]\n"        
// }

// print(answer)