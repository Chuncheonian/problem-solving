// 2022.05.18
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12931

import Foundation

func solution(_ n:Int) -> Int {
    return Array(String(n)).map{ Int(String($0))! }.reduce(0, +)
}

print(solution(123))  // > 6
print(solution(987))  // > 24