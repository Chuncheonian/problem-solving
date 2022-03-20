// 2022.03.19
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/42889

import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var failTuple = [(Int, Float)]()
    var completedPlayer = stages.count

    for stageNumber in 1...N {
        var notClearPlayer = 0
        for i in 0..<stages.count {
            if stages[i] == stageNumber { notClearPlayer += 1 }
        }
        failTuple.append((stageNumber, Float(notClearPlayer) / Float(completedPlayer)))
        completedPlayer -= notClearPlayer
    }
    return failTuple.sorted{ $0.1 > $1.1 }.map{ $0.0 }
}

print(solution(5, [2, 1, 2, 6, 2, 4, 3, 3]))  // > [3, 4, 2, 1, 5]