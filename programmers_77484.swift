// 2022.05.25
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/77484

import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let zeroCnt: Int = lottos.filter{ $0 == 0 }.count
    let answerCnt: Int = lottos.filter{ win_nums.contains($0) }.count
    
    let minScore: Int = min(6 - answerCnt + 1, 6)
    let maxScore: Int = max(minScore - zeroCnt, 1)

    return [maxScore, minScore]
}


// Testcase
print(solution([44, 1, 0, 0, 31, 25], [31, 10, 45, 1, 6, 19]))  // > [3, 5]
print(solution([0, 0, 0, 0, 0, 0], [38, 19, 20, 40, 15, 25]))  // > [1, 6]
print(solution([45, 4, 35, 20, 3, 9], [20, 9, 3, 45, 4, 35]))  // > [1, 1]