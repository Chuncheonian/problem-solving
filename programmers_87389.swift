// 2022.05.24
// Dongyoung Kwon @Chuncheonian (ehddud2468@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/87389

import Foundation

func solution(_ n:Int) -> Int {
    var result: Int = 1
    
    while n % result != 1 {
        result += 1
    }
    return result
}


// Testcase
print(solution(10))  // > 3
print(solution(12))  // > 11