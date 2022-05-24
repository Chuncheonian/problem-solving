// 2022.05.24
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/86051

import Foundation

func solution(_ numbers:[Int]) -> Int {
    return (0...9).filter{ !numbers.contains($0) }.reduce(0, +)
}


// Testcase
print(solution([1,2,3,4,6,7,8,0]))  // > 14
print(solution([5,8,4,0,6,7,9]))  // > 6