// 2022.05.21
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12934

import Foundation

func solution(_ n:Int64) -> Int64 {
    let root: Int64 = Int64(ceil(sqrt(Double(n))))
    
    return root * root == n ? (root + 1) * (root + 1) : -1
}

// Testcase
print(solution(121))  // > 144
print(solution(3))  // > -1