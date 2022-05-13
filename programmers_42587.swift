// 2022.05.13
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/42587

import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue: [(Int, Int)] = priorities.enumerated().map{ ($0, $1) }
    var result: Int = 0
    
    while true {
        let max: (Int, Int) = queue.max{ $0.1 < $1.1 }!
        let first: (Int, Int) = queue.removeFirst()

        if first == max {
            result += 1
            if first.0 == location {
                return result
            }
        } else {
            queue.append(first)
        }
    }
}

// Testcase
print(solution([2, 1, 3, 2], 2))  // > 1
print(solution([1, 1, 9, 1, 1, 1], 0))  // > 5