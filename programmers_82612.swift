// 2022.05.24
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/82612

import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64 {
    let total: Int = (1...count).map{ $0*price }.reduce(0, +)

    return Int64(total > money ? total - money : 0)
}


// Testcase
print(solution(3, 20, 4))  // > 10