// 2022.05.13
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/42586

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    let progresses: [Int] = progresses.map { 100 - $0 }
    var remainder: [Int] = []
    var result: [Int] = []
    var stack: [Int] = []

    for (a, b) in zip(progresses, speeds) {
        remainder.append(a % b == 0 ? (a / b) : (a / b + 1))
    }

    remainder.forEach {
        if stack.isEmpty {
            stack.append($0)
        } else {
            if $0 <= stack.max()! {
                stack.append($0)
            } else {
                result.append(stack.count)
                stack.removeAll()
                stack.append($0)
            }
        }
    }

    if stack.isEmpty == false {
        result.append(stack.count)
    }

    return result
}

// Testcase
print(solution([93, 30, 55], [1, 30, 5]))  // > [2, 1]
print(solution([95, 90, 99, 99, 80, 99], [1, 1, 1, 1, 1, 1]))  // > [1, 3, 2]
print(solution([1, 1, 1], [1, 1, 1]))  // > [3]