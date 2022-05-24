// 2022.05.24
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/70128

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    return zip(a, b).map{ $0 * $1 }.reduce(0, +)
}


// Testcase
print(solution([1,2,3,4], [-3,-1,0,2]))  // > 3
print(solution([-1,0,1], [1,0,-1]))  // > -2