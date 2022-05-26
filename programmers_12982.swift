// 2022.05.26
// Dongyoung Kwon @Chuncheonian (chuncheonian@gmail.com)
// https://programmers.co.kr/learn/courses/30/lessons/12982

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var budget: Int = budget

    return d
        .sorted()
        .filter{ 
            budget -= $0
            return budget >= 0
        }
        .count
}


// Testcase
print(solution([1,3,2,5,4], 9))  // > 3
print(solution([2,2,3,3], 10))  // > 4 